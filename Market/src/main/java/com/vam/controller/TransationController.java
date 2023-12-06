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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
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

import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;

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
		logger.info("usedTransation 占쏙옙占쏙옙");
		model.addAttribute("product", productservice.productList(categori));
	}

	@GetMapping(value = "/detailProduct")
	public void detailProduct(@RequestParam("productNo") Long productNo, Model model) throws Exception {
		logger.info("detailProduct 占쏙옙占쏙옙");
		System.out.println(productservice.productGetDetailImage(productNo));
		System.out.println(productservice.productGetDetail(productNo));
		System.out.println(productservice.getMemberAndProduct(productNo));
		productservice.increaseViewCount(productNo);
		productservice.selectChat(productNo);
		
		model.addAttribute("commentList", productservice.selectChat(productNo));
		model.addAttribute("writerProductInfo", productservice.getMemberAndProduct(productNo));
		model.addAttribute("productDetail", productservice.productGetDetail(productNo));
		model.addAttribute("productDetailImage", productservice.productGetDetailImage(productNo));
	}

	@RequestMapping(value = "/chat", method = RequestMethod.POST)
	public String insertChat(ChatVO cvo, Long productNo, int memberNo) throws Exception {
		logger.info("insertChat 占쏙옙占쏙옙");
		productservice.insertChat(cvo);
		return "redirect:/transation/detailProduct?productNo=" + cvo.getProductNo();
	}

	@RequestMapping(value = "/writeProduct", method = RequestMethod.GET)
	public void writeProduct() throws Exception {

		logger.info("writeProduct 占쏙옙占쏙옙");

	}

	/*
	 * @RequestMapping(value = "/writeProduct", method = RequestMethod.POST) public
	 * String writeProductPost(ProductVO pvo, RedirectAttributes rttr,
	 * MultipartFile[] subImage) throws Exception {
	 * log.info("writeProductPost 占쏙옙占쏙옙"); File file = new File("C:\\TESTPIC");
	 * if(file.exists()) { if (file.mkdir() == true) {
	 * System.out.println("占쏙옙占썰리占쏙옙 占쏙옙占쏙옙占실억옙占쏙옙占싹댐옙."); } else {
	 * System.out.println("占쏙옙占썰리占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쌩쏙옙占싹댐옙."); } } else {
	 * System.out.println("占쏙옙占썰리占쏙옙 占쏙옙占쏙옙占쌌니댐옙."); }
	 * 
	 * byte[] encodeBase64; // for(MultipartFile f: subImage) { //
	 * System.out.println("upload() POST 호占쏙옙"); // //占쏙옙占쏙옙 占싱몌옙占쏙옙 String 占쏙옙占쏙옙占쏙옙 占쏙옙환占싼댐옙 //
	 * System.out.println("占쏙옙占쏙옙 占싱몌옙(uploadfile.getOriginalFilename()) : "+
	 * f.getOriginalFilename()); // //占쏙옙占쏙옙 크占썩를 占쏙옙환占싼댐옙 //
	 * System.out.println("占쏙옙占쏙옙 크占쏙옙(uploadfile.getSize()) : "+ f.getSize()); //
	 * System.out.println("gmmddmdma : "+ f.get); // productservice.saveFile(f); //
	 * }
	 * 
	 * // for(int i=0; i< subImage.length; i++) { //
	 * System.out.println("占쏙옙占쏙옙 占싱몌옙(uploadfile.getOriginalFilename()) : "+
	 * subImage[i].getOriginalFilename()); //
	 * System.out.println("占쏙옙占쏙옙 크占쏙옙(uploadfile.getSize()) : "+ subImage[i].getSize());
	 * // // System.out.println(binaryString); //
	 * System.out.println("###########################"); // } for(MultipartFile
	 * multipartFile : subImage) { 占쏙옙占쏙옙 占싱몌옙 String uploadFileName =
	 * multipartFile.getOriginalFilename(); String binaryString =
	 * "data:image/png;base64," + new String(multipartFile.getBytes(), "UTF-8"); 占쏙옙占쏙옙
	 * 占쏙옙치, 占쏙옙占쏙옙 占싱몌옙占쏙옙 占쏙옙친 File 占쏙옙체 File saveFile = new File(binaryString, uploadFileName);
	 * 
	 * 占쏙옙占쏙옙 占쏙옙占쏙옙 try { multipartFile.transferTo(saveFile); } catch (Exception e) {
	 * e.printStackTrace(); } }
	 * 
	 * 
	 * 
	 * productservice.writeProductPost(pvo);
	 * 
	 * 
	 * return "redirect:/transation/usedTransation"; }
	 */

	@RequestMapping(value = "/writeProduct", method = RequestMethod.POST)

	public String writeProductPost(ProductVO pvo,  RedirectAttributes rttr, MultipartFile[] img, Model model) throws Exception {
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
		log.info("Product Image List: " + pvo.getProduct_imageList());
		 model.addAttribute("productImageList", pvo.getProduct_imageList());
		System.out.println("占싱뱄옙占쏙옙 占쏙옙占� : " +productservice.findById(pvo.getProductNo()));
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
			
			String uploadFolder = "C:\\upload\\temp";
			
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
	


//	public String writeProductPost(ProductVO pvo, RedirectAttributes rttr, MultipartFile[] subImage) throws Exception {
//	    log.info("writeProductPost 占쏙옙占쏙옙");
//
//	    // ProductVO占쏙옙占쏙옙 productNo占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쌨쇽옙占썲를 占쏙옙占쏙옙 占쌨쇽옙占쏙옙占� 占쌕뀐옙占쌍쇽옙占쏙옙
//	    Long productNo = pvo.getProductNo(); // 占쏙옙占시뤄옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占�, 占쏙옙占쏙옙 占쌨쇽옙占썲를 占쏙옙占쏙옙究占쏙옙占�
//
//	    File file = new File("C:\\upload");
//	    if (file.exists()) {
//	        if (file.mkdir()) {
//	            System.out.println("占쏙옙占썰리占쏙옙 占쏙옙占쏙옙占실억옙占쏙옙占싹댐옙.");
//	        } else {
//	            System.out.println("占쏙옙占썰리占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쌩쏙옙占싹댐옙.");
//	        }
//	    } else {
//	        System.out.println("占쏙옙占썰리占쏙옙 占쏙옙占쏙옙占쌌니댐옙.");
//	    }
//
//	    for (MultipartFile multipartFile : subImage) {
//	        if (!multipartFile.isEmpty()) {
//	            /* 占쏙옙占쏙옙 확占쏙옙占쏙옙 占쏙옙占쏙옙 */
//	            String originalFilename = multipartFile.getOriginalFilename();
//	            String fileExtension = originalFilename.substring(originalFilename.lastIndexOf("."));
//
//	            /* 占쏙옙占쏙옙占쏙옙 占쏙옙占싹몌옙: productNo + 확占쏙옙占쏙옙 */
//	            String uniqueFileName = productNo + fileExtension;
//
//	            /* 占쏙옙占쏙옙 占쏙옙치, 占쏙옙占쏙옙 占싱몌옙占쏙옙 占쏙옙친 File 占쏙옙체 */
//	            File saveFile = new File("C:\\upload", uniqueFileName);
//
//	            /* 占쏙옙占쏙옙 占쏙옙占쏙옙 */
//	            try {
//	                multipartFile.transferTo(saveFile);
//	                System.out.println("占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙: " + saveFile.getAbsolutePath());
//
//	                // 占쏙옙占쏙옙 占쏙옙占쏙옙占싶븝옙占싱쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 占쌍쏙옙占싹댐옙.
//	                productservice.saveFile(multipartFile, productNo);
//	            } catch (Exception e) {
//	                e.printStackTrace();
//	                System.out.println("占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙: " + e.getMessage());
//	            }
//	        }
//	    }
//
//	    // 占쌕몌옙 占쏙옙품 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싹깍옙 占쏙옙占쏙옙 productService 占쌨쇽옙占쏙옙 호占쏙옙
//	    productservice.writeProductPost(pvo);
//
//	    return "redirect:/transation/usedTransation";
//	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteComment(int chatNo, Long productNo) throws Exception {

		logger.info("deleteComment 占쏙옙占쏙옙");

		productservice.deleteComment(chatNo);
		return "redirect:/transation/detailProduct?productNo=" + productNo;
	}
	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public String deleteProduct(int productNo) throws Exception {

		logger.info("deleteProduct 占쏙옙占쏙옙");

		productservice.deleteProduct(productNo);
		return "redirect:/transation/usedTransation";
	}
	@RequestMapping(value = "/modifyProduct", method = RequestMethod.GET)
	public String modifyProduct(int productNo) throws Exception {

		logger.info("modifyProduct 占쏙옙占쏙옙");

		productservice.deleteProduct(productNo);
		return "redirect:/transation/detailProduct?productNo=" + productNo;
	}
	
	 @GetMapping("/searchRes")
	    public String getSearch(@RequestParam(name = "keyword") String searchKeyword, Model model) throws Exception {
	        List<ProductVO> products = productservice.getSearch(searchKeyword);
	        model.addAttribute("products", products);
	        return "searchRes"; // 뷰의 이름
	    }
	
	
}
