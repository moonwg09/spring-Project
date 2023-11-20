package com.vam.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public void memberJoin(Model model) throws Exception {
		logger.info("usedTransation 진입");
		System.out.println(productservice.productList());
		model.addAttribute("product",productservice.productList());
	}
	@RequestMapping(value = "/detailProduct", method = RequestMethod.GET)
	public void detailProduct(int productNo,Model model ) throws Exception {
		logger.info("detailProduct 진입");
		System.out.println(productservice.productGetDetail(productNo));
		model.addAttribute("productDetail",productservice.productGetDetail(productNo));

	}
}
