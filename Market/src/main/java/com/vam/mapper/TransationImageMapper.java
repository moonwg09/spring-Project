package com.vam.mapper;


import java.util.List;

import com.vam.VO.ProductImageVO;

public interface TransationImageMapper {
	
	public void insert(ProductImageVO pvo);
	public void delete(String uuid);
	public List<ProductImageVO> findById(Long productNo);
	public void deleteAll(int productNo);

}
