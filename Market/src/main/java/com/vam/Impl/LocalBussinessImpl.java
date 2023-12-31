package com.vam.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vam.VO.LocalBussinessImageVO;
import com.vam.VO.LocalBussinessVO;
import com.vam.VO.ProductImageVO;
import com.vam.VO.ReplyVO;
import com.vam.mapper.LocalBussinessImageMapper;
import com.vam.mapper.LocalBussinessMapper;
import com.vam.service.LocalBussinessService;

@Service
public class LocalBussinessImpl implements LocalBussinessService {
	@Autowired
	LocalBussinessMapper localmapper;

	@Autowired
	LocalBussinessImageMapper imagemapper;

	@Override
	public List<LocalBussinessVO> localBussinessSelectAll() throws Exception {
		return localmapper.localBussinessSelectAll();
	}

	@Override
	public LocalBussinessVO localGetDetail(Long productNo) throws Exception {

		return localmapper.localGetDetail(productNo);

	}

	@Override
	public int increaseRevisitCount(Long productNo) throws Exception {

		return localmapper.increaseRevisitCount(productNo);
	}

	@Override
	public void register(LocalBussinessVO lbvo) throws Exception {
		System.out.println(lbvo.getLocal_imageList() + "*****************8");
		localmapper.localBussinessInsert(lbvo);
		// register on product_image
		if (lbvo.getLocal_imageList() != null || lbvo.getLocal_imageList().size() > 0) {
			lbvo.getLocal_imageList().forEach(image -> {
				image.setProductNo(lbvo.getProductNo());

				imagemapper.insert(image);

				System.out.println("register imageList  ##################" + image);
			});
		} else {
			System.out.println("���̹��� ����##################");
		}
	}

	@Override
	public List<LocalBussinessImageVO> findById(Long productNo) {
		// TODO Auto-generated method stub
		return imagemapper.findById(productNo);
	}

	@Override
	public List<LocalBussinessVO> localBussinessList() throws Exception {
		// TODO Auto-generated method stub
		return localmapper.localBussinessList();
	}

	@Override
	public List<LocalBussinessVO> productGetDetailImage(Long productNo) throws Exception {
		// TODO Auto-generated method stub
		return localmapper.productGetDetailImage(productNo);
	}

	@Override
	public void insertChat(ReplyVO rvo) throws Exception {
		localmapper.insertChat(rvo);

	}
	
	@Override
	public List<ReplyVO> selectChat(Long productNo) throws Exception {
		// TODO Auto-generated method stub
		return localmapper.selectChat(productNo);
	}
	@Override
	public void deleteComment(int replyNo) throws Exception {
		localmapper.deleteComment(replyNo);
		
	}
	
@Override
	public List<ReplyVO> selectChatAll() throws Exception {

		return localmapper.selectChatAll();
	}
}
