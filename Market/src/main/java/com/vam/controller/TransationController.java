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


import com.vam.VO.ChatVO;
import com.vam.VO.NoticeImageVO;
import com.vam.VO.ProductVO;

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
		logger.info("usedTransation ����");
		System.out.println(productservice.productList(categori));
		model.addAttribute("product", productservice.productList(categori));
	}

	@RequestMapping(value = "/detailProduct", method = RequestMethod.GET)
	public void detailProduct(int productNo, Model model) throws Exception {
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
	public String insertChat(ChatVO cvo, int productNo, int memberNo) throws Exception {
		logger.info("insertChat ����");
		productservice.insertChat(cvo);
		return "redirect:/transation/detailProduct?productNo=" + cvo.getProductNo();
	}

	@RequestMapping(value = "/writeProduct", method = RequestMethod.GET)
	public void writeProduct() throws Exception {

		logger.info("writeProduct ����");

	}

	@RequestMapping(value = "/writeProduct", method = RequestMethod.POST)
	public String writeProductPost(ProductVO pvo) throws Exception {
		logger.info("writeProductPost ����");
		productservice.writeProductPost(pvo);
		return "redirect:/transation/usedTransation";
	}

	

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteComment(int chatNo, int productNo) throws Exception {

		logger.info("deleteComment ����");

		productservice.deleteComment(chatNo);
		return "redirect:/transation/detailProduct?productNo=" + productNo;
	}
}
