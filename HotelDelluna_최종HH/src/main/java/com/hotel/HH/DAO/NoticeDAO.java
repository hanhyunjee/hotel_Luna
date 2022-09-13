package com.hotel.HH.DAO;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.hotel.HH.DTO.NoticeDTO;

public interface NoticeDAO {

	public void NoticeInsert(NoticeDTO dto);
	
	public List<NoticeDTO> selectNotice(Map pageMap) throws DataAccessException ; // 기웅씨 추가
	
	public int totalNotice() throws DataAccessException ; // 기웅씨 추가

	public List<NoticeDTO> NoticeSelect(int start,int end,String Search,String Searchtext);

	public void NoticeCountUpdate(int b_no);
	
	public NoticeDTO SelectNotice(int b_no);
	
    public int SelectCount(String Search, String Searchtext);
    
    public void NoticeDelete(int b_no);
    
    public void NoticeModify(NoticeDTO dto);
    
    
}
