package com.vam.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vam.service.LocalBussinessService;

@Controller
@RequestMapping(value = "/localBussiness")
public class LocalBussinessController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	LocalBussinessService localservice;
	
	@RequestMapping(value = "/localBussinessMain", method = RequestMethod.GET)
	public void usedTransation(Model model) throws Exception {
		logger.info("LocalBussiness 진입");
		localservice.localBussinessSelectAll();
		model.addAttribute("local",localservice.localBussinessSelectAll());
		
	}
	@RequestMapping(value = "/localDetail", method = RequestMethod.GET)
	public void localDetail(@RequestParam("productNo") Long productNo ,Model model) throws Exception {
		logger.info("LocalDetail 진입");
		localservice.localGetDetail(productNo);
		model.addAttribute("localDetail",localservice.localGetDetail(productNo));
		
	}
	@RequestMapping(value = "/revisit", method = RequestMethod.GET)
	public String localRevisit(@RequestParam("productNo") Long productNo, Model model) throws Exception {
		logger.info("revisit진입");
		localservice.increaseRevisitCount(productNo);
		return "redirect:/localBussiness/localDetail?productNo="+ productNo;
	}
	
	
	
	
}
