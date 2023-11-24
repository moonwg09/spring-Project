package com.vam.mapper;

import java.util.List;


import com.vam.VO.Criteria;
import com.vam.VO.NoticeVO;

public interface NoticeMapper {
	public void insert(NoticeVO notice);
	
	public NoticeVO read(Long notice_id);
	
	public List<NoticeVO> getList(Criteria cri);
	
	public int getTotalCount();
	
	public int delete(Long notice_id);
	
	public int update(NoticeVO notice);
	
	public List<NoticeVO> getRecentList();
}
