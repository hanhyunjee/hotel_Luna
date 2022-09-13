package com.hotel.HH.Service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.HH.DAO.NoticeDAO;
import com.hotel.HH.DTO.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDAO dao;
	
	@Override
	public void NoticeInsert(NoticeDTO dto) {
		// TODO Auto-generated method stub
		dao.NoticeInsert(dto);
	}
	
	// 기웅씨 추가
	public Map NoticeList(Map  pagingMap) throws Exception{
		Map noticeMap = new HashMap();
		List<NoticeDTO> noticeList = dao.selectNotice(pagingMap);
		int totalNotice = dao.totalNotice();
		/* int totArticles = 255; */
		noticeMap.put("noticeList", noticeList);
		noticeMap.put("totalNotice", totalNotice);
		//articlesMap.put("totArticles", 170);
        return noticeMap;
	}
	
	@Override
	public List<NoticeDTO> NoticeSelect(int start,int end,String Search,String Searchtext) {
		// TODO Auto-generated method stub
		
		return dao.NoticeSelect(start,end,Search,Searchtext);
	}
	@Override
	public void NoticeCountUpdate(int b_no) {
		// TODO Auto-generated method stub
		dao.NoticeCountUpdate(b_no);
	}
	@Override
	public NoticeDTO SelectNotice(int b_no) {
		// TODO Auto-generated method stub
		return dao.SelectNotice(b_no);
	}
	@Override
	public int SelectCount(String Search, String Searchtext) {
		// TODO Auto-generated method stub
		return dao.SelectCount(Search,Searchtext);
	}
	@Override
	public void NoticeDelete(int b_no) {
		// TODO Auto-generated method stub
		dao.NoticeDelete(b_no);
	}
	@Override
	public void NoticeModify(NoticeDTO dto) {
		// TODO Auto-generated method stub
		dao.NoticeModify(dto);
	}

}
