package com.hotel.HH.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.hotel.HH.DTO.QnADTO;

@Repository
public class QnADAOImpl implements QnADAO {

	@Autowired
	SqlSession sqlSession;

	private static final String namespace = "com.spring.HH.mybatis.mapper.QnAMapper";

	@Override
	public void QnAInsert(QnADTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".QnAInsert", dto);

	}
	
	// 기웅씨 추가
	public List<QnADTO> selectQnA(Map pageMap) throws DataAccessException {
		List<QnADTO> qnasList  = sqlSession.selectList(namespace + ".selectQnA", pageMap);
		return qnasList;
	}
	
	// 기웅씨 추가
	public int totalQnA() throws DataAccessException {
		return sqlSession.selectOne(namespace + ".totalQnA");
	}
	
	@Override
	public List<QnADTO> QnASelect(int start, int end, String Search, String Searchtext) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		return sqlSession.selectList(namespace + ".QnAList", map);
	}

	@Override
	public void QnACountUpdate(int q_no) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".QnACountUpdate", q_no);
	}

	@Override
	public QnADTO SelectQnA(int q_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".SelectQnA", q_no);
	}

	@Override
	public int SelectCount(String Search, String Searchtext) {
		Map<String, String> map = new HashMap<String, String>();
		// TODO Auto-generated method stub
		map.put("Search", Search);
		map.put("Searchtext", Searchtext);
		Set<Map.Entry<String, String>> entries = map.entrySet();
		System.out.println("entries = " + entries);
		/*
		 * for (Map.Entry<String, String> tempEntry : entries) {
		 * System.out.println("getKey() = " + tempEntry.getKey() + ", getValue() = " +
		 * tempEntry.getValue()); }
		 */

		return sqlSession.selectOne(namespace + ".SelectCount", map);
	}

	@Override
	public void QnADelete(int q_no) throws DataAccessException {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".QnADelete", q_no);

	}

	@Override
	public void QnAModify(QnADTO dto) throws DataAccessException{
		// TODO Auto-generated method stub
		sqlSession.update(namespace+".QnAModify", dto);
		/* sqlSession.update(namespace + ".QnAModify", dto); */

	}
}
