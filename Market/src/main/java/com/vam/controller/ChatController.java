package com.vam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.vam.VO.ChattingVO;
import com.vam.service.ChatDAO;

@RestController
public class ChatController {
	
	@Autowired
	private ChatDAO dao;
	
	@RequestMapping(value="/chat/insert", method = RequestMethod.POST)
	public void insert(ChattingVO vo) {
		dao.insert(vo);
	}

}
