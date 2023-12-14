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
@RequestMapping(value = "/alba")
public class AlbarController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	

	@RequestMapping(value = "/albaMain", method = RequestMethod.GET)
	public void usedTransation(Model model) throws Exception {
		logger.info("LocalBussiness 占쏙옙占쏙옙");
	
	}

	
}
