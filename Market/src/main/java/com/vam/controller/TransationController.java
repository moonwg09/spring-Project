package com.vam.controller;

import java.io.File;
import java.util.ArrayList;
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

<<<<<<< HEAD
import com.vam.VO.ChattingVO;
=======
import com.vam.VO.ChatVO;
import com.vam.VO.NoticeImageVO;
import com.vam.VO.ProductVO;
>>>>>>> 7219e16909f559683a992068b9cd5edb568a4bd9
import com.vam.service.MemberService;
import com.vam.service.TransationService;

@Controller
@RequestMapping(value = "/transation")
public class TransationController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	TransationService productservice;

	@Autowired
	MemberService memberservice;

	@RequestMapping(value = "/usedTransation", method = RequestMethod.GET)
	public void usedTransation(@RequestParam(defaultValue = "1") int categori, Model model) throws Exception {
		logger.info("usedTransation ï¿½ï¿½ï¿½ï¿½");
		System.out.println(productservice.productList(categori));
		model.addAttribute("product", productservice.productList(categori));
	}

	@RequestMapping(value = "/detailProduct", method = RequestMethod.GET)
	public void detailProduct(int productNo, Model model) throws Exception {
		logger.info("detailProduct ï¿½ï¿½ï¿½ï¿½");
		System.out.println(productservice.productGetDetail(productNo));
		System.out.println(productservice.getMemberAndProduct(productNo));
		productservice.increaseViewCount(productNo);
		productservice.selectChat(productNo);

		model.addAttribute("commentList", productservice.selectChat(productNo));
		model.addAttribute("writerProductInfo", productservice.getMemberAndProduct(productNo));
		model.addAttribute("productDetail", productservice.productGetDetail(productNo));
	}

<<<<<<< HEAD
	@RequestMapping(value = "/writeProduct", method = RequestMethod.GET)
	public void writeProduct() throws Exception {
		
		logger.info("writeProduct ï¿½ï¿½ï¿½ï¿½");
=======
	@RequestMapping(value = "/chat", method = RequestMethod.POST)
	public String insertChat(ChatVO cvo, int productNo, int memberNo) throws Exception {
		logger.info("insertChat ÁøÀÔ");
		productservice.insertChat(cvo);
		return "redirect:/transation/detailProduct?productNo=" + cvo.getProductNo();
	}

	@RequestMapping(value = "/writeProduct", method = RequestMethod.GET)
	public void writeProduct() throws Exception {

		logger.info("writeProduct ÁøÀÔ");
>>>>>>> 7219e16909f559683a992068b9cd5edb568a4bd9
	}

	@RequestMapping(value = "/writeProduct", method = RequestMethod.POST)
	public void writeProductPost(ProductVO pvo) throws Exception {
		logger.info("writeProductPost ÁøÀÔ");
	}

	

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteComment(int chatNo, int productNo) throws Exception {
<<<<<<< HEAD
		
		logger.info("deleteComment ï¿½ï¿½ï¿½ï¿½");
=======

		logger.info("deleteComment ÁøÀÔ");
>>>>>>> 7219e16909f559683a992068b9cd5edb568a4bd9
		productservice.deleteComment(chatNo);
		return "redirect:/transation/detailProduct?productNo=" + productNo;
	}
}
