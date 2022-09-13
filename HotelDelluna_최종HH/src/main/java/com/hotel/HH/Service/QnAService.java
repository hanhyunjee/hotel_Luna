package com.hotel.HH.Service;

import java.util.List;
import java.util.Map;

import com.hotel.HH.DTO.QnADTO;

public interface QnAService {
	
	public void QnAInsert(QnADTO dto);

	public List<QnADTO> QnASelect(int start,int end, String search, String searchtext);
	
	public Map qnAList2(Map  pagingMap) throws Exception; // 기웅씨 추가
	
	public void QnACountUpdate(int q_no);

	public QnADTO SelectQnA(int q_no);

	public int SelectCount(String Search, String Searchtext);
	
	public void QnADelete(int q_no);
	
	public void QnAModify(QnADTO dto);
	

}
