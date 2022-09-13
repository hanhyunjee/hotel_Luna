package com.hotel.HH.Service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.HH.DAO.QnADAO;
import com.hotel.HH.DTO.QnADTO;

@Service
public class QnAServiceImpl implements QnAService {
	
	@Autowired
	QnADAO dao;
	

	public void QnAInsert(QnADTO dto) {
		// TODO Auto-generated method stub
		dao.QnAInsert(dto);
	}
	
	// 기웅씨 추가
	public Map qnAList2(Map  pagingMap) throws Exception{
		Map qnasMap = new HashMap();
		List<QnADTO> qnaList = dao.selectQnA(pagingMap);
		int totalQnA = dao.totalQnA();
		/* int totArticles = 255; */
		qnasMap.put("qnaList", qnaList);
		qnasMap.put("totalQnA", totalQnA);
		//articlesMap.put("totArticles", 170);
        return qnasMap;
	}
	
	public List<QnADTO> QnASelect(int start,int end,String Search,String Searchtext) {
		// TODO Auto-generated method stub
		
		return dao.QnASelect(start,end,Search,Searchtext);
	}

	public void QnACountUpdate(int q_no) {
		// TODO Auto-generated method stub
		dao.QnACountUpdate(q_no);
	}
	@Override
	public QnADTO SelectQnA(int q_no) {
		// TODO Auto-generated method stub
		return dao.SelectQnA(q_no);
	}
	@Override
	public int SelectCount(String Search, String Searchtext) {
		// TODO Auto-generated method stub
		return dao.SelectCount(Search,Searchtext);
	}
	@Override
	public void QnADelete(int q_no) {
		// TODO Auto-generated method stub
		dao.QnADelete(q_no);
	}
	
	@Override
	public void QnAModify(QnADTO dto) {
		// TODO Auto-generated method stub
		dao.QnAModify(dto);
	}

}
