package com.vam.mapper;

import java.util.List;

import com.vam.VO.LocalBussinessImageVO;


public interface LocalBussinessImageMapper {
	
	
	public void insert(LocalBussinessImageVO pvo);
	
	public void delete(String uuid);
	
	public List<LocalBussinessImageVO> findById(Long productNo);
	
	public void deleteAll(int productNo);
}
