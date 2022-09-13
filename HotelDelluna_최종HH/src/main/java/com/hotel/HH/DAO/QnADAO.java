package com.hotel.HH.DAO;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.hotel.HH.DTO.QnADTO;

public interface QnADAO {

	public void QnAInsert(QnADTO dto);
	
	public List<QnADTO> selectQnA(Map pageMap) throws DataAccessException ; // 기웅씨 추가
	
	public int totalQnA() throws DataAccessException ; // 기웅씨 추가
	
	public List<QnADTO> QnASelect(int start,int end,String Search,String Searchtext);

	public void QnACountUpdate(int q_no);
	
	public QnADTO SelectQnA(int q_no);
	
    public int SelectCount(String Search, String Searchtext);
    
    public void QnADelete(int q_no);
    
    public void QnAModify(QnADTO dto);
    
    
}
