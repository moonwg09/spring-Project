package com.vam.service;

import com.vam.VO.KakaoDTO;

public interface KakaoInterface {
	
	public String getAccessToken(String authorize_code);

	public KakaoDTO getUserInfo(String access_Token);

}
