
package com.vam.controller;

import java.io.FileInputStream;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.vam.VO.ChattingVO;
import com.vam.service.ChatService;
import com.vam.Impl.ChatServiceImpl;

@RestController
public class ChatController {
	

	@Autowired
	private ChatService dao;
	

	
	@RequestMapping("/chat.json")
	public List<ChattingVO> list(){
		return dao.list();
	}
	
	@RequestMapping(value="/chat/insert", method = RequestMethod.POST)
	public int insert(ChattingVO vo) {
		dao.insert(vo);
		int last=dao.last();
		System.out.println("......................" + last);
		return last;
	}
	
	@RequestMapping(value="/chat/delete", method=RequestMethod.POST)
	public void delete(int id) {
		dao.delete(id);
	}
	


}
