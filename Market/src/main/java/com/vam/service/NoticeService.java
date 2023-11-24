package com.vam.service;

import java.util.List;



import com.vam.VO.Criteria;
import com.vam.VO.NoticeImageVO;
import com.vam.VO.NoticeVO;

public interface NoticeService {
	public void register(NoticeVO notice);
	
	public NoticeVO get(Long notice_id);
	
	public List<NoticeVO> getList(Criteria cri);
	
	public int getTotal();
	
	public boolean remove(Long notice_id);
	
	public NoticeImageVO getImage(Long notice_id);
	
	public boolean modify(NoticeVO notice);
	
	public List<NoticeVO> getRecentList();
}
