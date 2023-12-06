package com.vam.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vam.VO.ChatVO;
import com.vam.VO.LocalBussinessImageVO;
import com.vam.VO.LocalBussinessVO;
import com.vam.VO.ProductImageVO;
import com.vam.VO.ProductVO;
import com.vam.VO.ReplyVO;
import com.vam.service.LocalBussinessService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Log4j
@RequiredArgsConstructor
@Controller
@RequestMapping(value = "/localBussiness")
public class LocalBussinessController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	LocalBussinessService localservice;

	@RequestMapping(value = "/localBussinessMain", method = RequestMethod.GET)
	public void usedTransation(Model model) throws Exception {
		logger.info("LocalBussiness 占쏙옙占쏙옙");
		localservice.localBussinessSelectAll();
		localservice.localBussinessList();
		localservice.selectChatAll();
		model.addAttribute("replyListAll",localservice.selectChatAll());
		model.addAttribute("imgList", localservice.localBussinessList());
		model.addAttribute("local", localservice.localBussinessSelectAll());

	}

	@RequestMapping(value = "/localDetail", method = RequestMethod.GET)
	public void localDetail(@RequestParam("productNo") Long productNo ,Model model) throws Exception {
		logger.info("LocalDetail 占쏙옙占쏙옙");
		localservice.localGetDetail(productNo);
		
		localservice.selectChat(productNo);
		
		System.out.println(localservice.selectChat(productNo));
		model.addAttribute("replyList", localservice.selectChat(productNo));
		model.addAttribute("localDetailImage",localservice.productGetDetailImage(productNo));
		model.addAttribute("localDetail",localservice.localGetDetail(productNo));
		
		
	}

	@RequestMapping(value = "/chat", method = RequestMethod.POST)
	public String insertChat(ReplyVO cvo, int productNo, int memberNo) throws Exception {
		logger.info("insertChat 占쏙옙占쏙옙");
		localservice.insertChat(cvo);
		return "redirect:/localBussiness/localDetail?productNo=" + cvo.getProductNo();
	}

	@RequestMapping(value = "/revisit", method = RequestMethod.GET)
	public String localRevisit(@RequestParam("productNo") Long productNo, Model model) throws Exception {
		logger.info("revisit占쏙옙占쏙옙");
		localservice.increaseRevisitCount(productNo);
		return "redirect:/localBussiness/localDetail?productNo=" + productNo;
	}

	@RequestMapping(value = "/localInsert", method = RequestMethod.GET)
	public void writeProduct() throws Exception {

		logger.info("writeProduct 占쏙옙占쏙옙");

	}

	@RequestMapping(value = "/localInsert", method = RequestMethod.POST)

	public String localBussinessInsert(LocalBussinessVO lbvo, RedirectAttributes rttr, MultipartFile[] img, Model model)
			throws Exception {
		List<LocalBussinessImageVO> imagelist = new ArrayList<>();
		log.info(lbvo.getProductNo());

		for (MultipartFile multipartFile : img) {
			if (!multipartFile.isEmpty()) {
				imageFolderSave(multipartFile, imagelist, "img");
			}
		}
		lbvo.setLocal_imageList(imagelist);
		log.info("regiter : " + lbvo);
		localservice.register(lbvo);

		rttr.addFlashAttribute("result", lbvo.getProductNo());
		log.info("Product Image List: " + lbvo.getLocal_imageList());
		model.addAttribute("localImageList", lbvo.getLocal_imageList());
		System.out.println("占싱뱄옙占쏙옙 占쏙옙占� : " + localservice.findById(lbvo.getProductNo()));
		return "redirect:/localBussiness/localBussinessMain";
	}

	// year/month/day folder create
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}

	private void imageFolderSave(MultipartFile mainImage, List<LocalBussinessImageVO> imagelist, String imageType) {

		String uploadFolder = "C:\\upload\\temp";

		// make folder
		String uploadFolderPath = getFolder();
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		if (!uploadPath.exists()) {
			uploadPath.mkdirs();
		}

		UUID uuid = UUID.randomUUID();
		String uploadImageName = uuid.toString() + "_" + mainImage.getOriginalFilename();
		try {
			// original image save
			File saveImage = new File(uploadPath, uploadImageName);
			mainImage.transferTo(saveImage);

			if (imageType.equals("mainImage")) {
				// thumbnail image create, save
				FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadImageName));
				Thumbnailator.createThumbnail(mainImage.getInputStream(), thumbnail, 400, 333);
				thumbnail.close();
			}

			// productImageVO create
			imagelist.add(new LocalBussinessImageVO(uuid.toString(), uploadFolderPath.toString().replace("\\", "/"),
					mainImage.getOriginalFilename(), imageType, null));

		} catch (Exception e) {
			log.error(e.getMessage());
		}
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteComment(int replyNo, Long productNo) throws Exception {
		logger.info("deleteComment 占쏙옙占쏙옙");

		localservice.deleteComment(replyNo);
		return "redirect:/localBussiness/localDetail?productNo=" + productNo;
	}

}
