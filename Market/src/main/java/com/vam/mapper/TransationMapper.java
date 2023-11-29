package com.vam.mapper;

import java.util.List;

import com.vam.VO.MemberVO;
import com.vam.VO.ProductVO;
import com.vam.VO.ChattingVO;

public interface TransationMapper {
	// �Խñ� ��ü����
	public List<ProductVO> productList(int categori);
	
	// �Խñ� �󼼺���
	public ProductVO productGetDetail(int productNo);
	
	// �Խñ� �ۼ��� ���� ���� �ҷ�����
	public ProductVO getMemberAndProduct(int productNo);
	
	// �Խñ� ��ȸ�� ����
	public int increaseViewCount(int productNo);
	
	// ��� ���
	public void insertChat(ChattingVO cvo);

	public List<ChattingVO> selectChat(int productNo);
	
	public void deleteComment(int chatNo);
	
	public void writeProductPost(ProductVO pvo);
}
