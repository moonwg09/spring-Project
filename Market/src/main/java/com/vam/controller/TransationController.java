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
	 * System.out.println("디렉토리가 생성되었습니다."); } else {
	 * System.out.println("디렉토리를 생성하지 못했습니다."); } } else {
	 * System.out.println("디렉토리가 존재합니다."); }
	 * 
	 * byte[] encodeBase64; // for(MultipartFile f: subImage) { //
	 * System.out.println("upload() POST 호출"); // //파일 이름을 String 값으로 반환한다 //
	 * System.out.println("파일 이름(uploadfile.getOriginalFilename()) : "+
	 * f.getOriginalFilename()); // //파일 크기를 반환한다 //
	 * System.out.println("파일 크기(uploadfile.getSize()) : "+ f.getSize()); //
	 * System.out.println("gmmddmdma : "+ f.get); // productservice.saveFile(f); //
	 * }
	 * 
	 * // for(int i=0; i< subImage.length; i++) { //
	 * System.out.println("파일 이름(uploadfile.getOriginalFilename()) : "+
	 * subImage[i].getOriginalFilename()); //
	 * System.out.println("파일 크기(uploadfile.getSize()) : "+ subImage[i].getSize());
	 * // // System.out.println(binaryString); //
	 * System.out.println("###########################"); // } for(MultipartFile
	 * multipartFile : subImage) { 파일 이름 String uploadFileName =
	 * multipartFile.getOriginalFilename(); String binaryString =
	 * "data:image/png;base64," + new String(multipartFile.getBytes(), "UTF-8"); 파일
	 * 위치, 파일 이름을 합친 File 객체 File saveFile = new File(binaryString, uploadFileName);
	 * 
	 * 파일 저장 try { multipartFile.transferTo(saveFile); } catch (Exception e) {
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
		System.out.println("이미지 경로 : " +productservice.findById(pvo.getProductNo()));
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
//	    log.info("writeProductPost 실행");
//
//	    // ProductVO에서 productNo를 가져오는 메서드를 실제 메서드로 바꿔주세요
//	    Long productNo = pvo.getProductNo(); // 예시로 가져오는 방법, 실제 메서드를 사용하세요
//
//	    File file = new File("C:\\upload");
//	    if (file.exists()) {
//	        if (file.mkdir()) {
//	            System.out.println("디렉토리가 생성되었습니다.");
//	        } else {
//	            System.out.println("디렉토리를 생성하지 못했습니다.");
//	        }
//	    } else {
//	        System.out.println("디렉토리가 존재합니다.");
//	    }
//
//	    for (MultipartFile multipartFile : subImage) {
//	        if (!multipartFile.isEmpty()) {
//	            /* 파일 확장자 추출 */
//	            String originalFilename = multipartFile.getOriginalFilename();
//	            String fileExtension = originalFilename.substring(originalFilename.lastIndexOf("."));
//
//	            /* 생성된 파일명: productNo + 확장자 */
//	            String uniqueFileName = productNo + fileExtension;
//
//	            /* 파일 위치, 파일 이름을 합친 File 객체 */
//	            File saveFile = new File("C:\\upload", uniqueFileName);
//
//	            /* 파일 저장 */
//	            try {
//	                multipartFile.transferTo(saveFile);
//	                System.out.println("파일 저장 성공: " + saveFile.getAbsolutePath());
//
//	                // 이제 데이터베이스에 파일 정보를 저장할 수 있습니다.
//	                productservice.saveFile(multipartFile, productNo);
//	            } catch (Exception e) {
//	                e.printStackTrace();
//	                System.out.println("파일 저장 실패: " + e.getMessage());
//	            }
//	        }
//	    }
//
//	    // 다른 제품 정보를 저장하기 위해 productService 메서드 호출
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
	
	
	/* 이미지 정보 반환 */
	@GetMapping(value="/getAttachList")
	public ResponseEntity<List<ProductImageVO>> getAttachList(int bookId){
		
		logger.info("getAttachList.........." + bookId);
		
		return new ResponseEntity(attachMapper.getAttachList(bookId), HttpStatus.OK);
		
	}
}
