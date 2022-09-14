package com.hotel.HH.Service;

import java.util.List;
import java.util.Map;

import com.hotel.HH.DTO.NoticeDTO;

public interface NoticeService {
	public void NoticeInsert(NoticeDTO dto);

	public List<NoticeDTO> NoticeSelect(int start,int end,String Search,String Searchtext);
	
	public Map NoticeList(Map pagingMap) throws Exception; // 기웅씨 추가

	public void NoticeCountUpdate(int b_no);

	public NoticeDTO SelectNotice(int b_no);

	public int SelectCount(String Search, String Searchtext);
	
	public void NoticeDelete(int b_no);
	
	public void NoticeModify(NoticeDTO dto);
	

}
