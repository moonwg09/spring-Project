package com.vam.mapper;

import java.util.List;

import com.vam.VO.ProductImageVO;

public interface TransationImageMapper {
	
	public void insert(ProductImageVO vo);
	public void delete(String uuid);
	public List<ProductImageVO> findById(long productNo);
	public void deleteAll(int productNo);

}
