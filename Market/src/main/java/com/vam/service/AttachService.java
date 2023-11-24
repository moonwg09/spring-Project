package com.vam.service;

import java.util.List;

import com.vam.VO.AttachImageVO;

public interface AttachService {
	
	
	/* 이미지 데이터 반환 */
	public List<AttachImageVO> getAttachList(int bookId);

}
