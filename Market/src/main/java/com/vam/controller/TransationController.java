package com.vam.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public void usedTransation(@RequestParam(defaultValue = "1")int categori,Model model) throws Exception {
		logger.info("usedTransation 진입");
		System.out.println(productservice.productList(categori));
		model.addAttribute("product",productservice.productList(categori));
	}
	@RequestMapping(value = "/detailProduct", method = RequestMethod.GET)
	public void detailProduct(int productNo,Model model ) throws Exception {
		logger.info("detailProduct 진입");
		System.out.println(productservice.productGetDetail(productNo));
		System.out.println(productservice.getMemberAndProduct(productNo));
		productservice.increaseViewCount(productNo);
		
		
		model.addAttribute("writerProductInfo",productservice.getMemberAndProduct(productNo));
		model.addAttribute("productDetail",productservice.productGetDetail(productNo));

	}
}
