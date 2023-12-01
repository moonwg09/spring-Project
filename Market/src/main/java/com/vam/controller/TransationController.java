package com.vam.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vam.VO.ChatVO;
import com.vam.VO.NoticeImageVO;
import com.vam.VO.ProductImageVO;
import com.vam.VO.ProductVO;

import com.vam.service.MemberService;
import com.vam.service.NoticeService;
import com.vam.service.TransationService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Log4j
@RequestMapping(value = "/transation")
@RequiredArgsConstructor
@Controller
public class TransationController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	TransationService productservice;

	@Autowired
	MemberService memberservice;

	@RequestMapping(value = "/usedTransation", method = RequestMethod.GET)
	public void usedTransation(@RequestParam(defaultValue = "1") int categori, Model model) throws Exception {
		logger.info("usedTransation ����");
		System.out.println(productservice.productList(categori));
		model.addAttribute("product", productservice.productList(categori));
	}

	@RequestMapping(value = "/detailProduct", method = RequestMethod.GET)
	public void detailProduct(Long productNo, Model model) throws Exception {
		logger.info("detailProduct ����");
		System.out.println(productservice.productGetDetail(productNo));
		System.out.println(productservice.getMemberAndProduct(productNo));
		productservice.increaseViewCount(productNo);
		productservice.selectChat(productNo);

		model.addAttribute("commentList", productservice.selectChat(productNo));
		model.addAttribute("writerProductInfo", productservice.getMemberAndProduct(productNo));
		model.addAttribute("productDetail", productservice.productGetDetail(productNo));
	}



	@RequestMapping(value = "/chat", method = RequestMethod.POST)
	public String insertChat(ChatVO cvo, Long productNo, int memberNo) throws Exception {
		logger.info("insertChat ����");
		productservice.insertChat(cvo);
		return "redirect:/transation/detailProduct?productNo=" + cvo.getProductNo();
	}

	@RequestMapping(value = "/writeProduct", method = RequestMethod.GET)
	public void writeProduct() throws Exception {

		logger.info("writeProduct ����");

	}

	@RequestMapping(value = "/writeProduct", method = RequestMethod.POST)
	public String writeProductPost(ProductVO pvo,  RedirectAttributes rttr, MultipartFile[] img) throws Exception {
		List<ProductImageVO> imagelist = new ArrayList<>();
		log.info(pvo.getProductNo());
	
		
		for(MultipartFile multipartFile : img) {
			if(!multipartFile.isEmpty()) {
				imageFolderSave(multipartFile, imagelist, "img");
			}
		}
		pvo.setProduct_imageList(imagelist);
		log.info("regiter : "+ pvo);
		productservice.register(pvo);
		
		rttr.addFlashAttribute("result", pvo.getProductNo());
		// use RedirectAttributes to transmit with new product id
			
		return "redirect:/transation/usedTransation";
	}
	
	// year/month/day folder create
		private String getFolder() {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String str = sdf.format(date);
			return str.replace("-", File.separator);
		}
		
		
		private void imageFolderSave(MultipartFile mainImage, List<ProductImageVO> imagelist, String imageType) {
			
			String uploadFolder = "c:\\upload\\temp";
			
			// make folder
			String uploadFolderPath = getFolder();
			File uploadPath = new File(uploadFolder, uploadFolderPath);
			if(!uploadPath.exists()) {
				uploadPath.mkdirs();
			}

			UUID uuid = UUID.randomUUID();
			String uploadImageName = uuid.toString()+"_"+mainImage.getOriginalFilename();
			try {
				// original image save
				File saveImage = new File(uploadPath, uploadImageName);
				mainImage.transferTo(saveImage);
				
				if(imageType.equals("mainImage")) {
					// thumbnail image create, save
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_"+uploadImageName));
					Thumbnailator.createThumbnail(mainImage.getInputStream(), thumbnail, 400, 333);
					thumbnail.close();
				}
				
				// productImageVO create
				imagelist.add(new ProductImageVO(uuid.toString(), uploadFolderPath.toString().replace("\\", "/"), mainImage.getOriginalFilename(), imageType, null));

			}catch(Exception e){log.error(e.getMessage());}
		}
	

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteComment(int chatNo, Long productNo) throws Exception {

		logger.info("deleteComment ����");

		productservice.deleteComment(chatNo);
		return "redirect:/transation/detailProduct?productNo=" + productNo;
	}
}
