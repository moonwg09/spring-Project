package com.vam.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vam.service.TransationService;

@Controller
@RequestMapping(value = "/transation")
public class TransationController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	TransationService productservice;
	
	@RequestMapping(value = "/usedTransation", method = RequestMethod.GET)
	public void memberJoin(Model model) throws Exception {
		logger.info("usedTransation ¡¯¿‘");
		System.out.println(productservice.productList());
		model.addAttribute("product",productservice.productList());
	}
}
