package com.hotel.HH.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hotel.HH.DTO.ReservationDTO;

@Repository
public class ReservationDAOImpl implements ReservationDAO {

	@Autowired
	SqlSession sqlSession;

	private static String namespace = "com.spring.HH.mybatis.mapper.ReservationMapper";

	@Override
	public void reservation_number_people(ReservationDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".reservation_number_people", dto);

	}

	@Override
	public int RoomPrice(ReservationDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".RoomPrice", dto);
	}

	@Override
	public void reservationInsert(ReservationDTO dto) {
		// TODO Auto-generated method stub
		sqlSession.selectOne(namespace + ".reservationInsert", dto);
	}

	@Override
	public int DuplicateFind(ReservationDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".DuplicateFind", dto);
	}

	@Override
	public String PayCheck(String m_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".PayCheck", m_id);
	}

	@Override
	public void PayCheckUpdate(String number) {
		// TODO Auto-generated method stub
		sqlSession.selectOne(namespace + ".PayCheckUpdate", number);

	}

	
//	수정
	@Override
	public void ReservationDelete(String m_id) {
		// TODO Auto-generated method stub
		String rn = sqlSession.selectOne(namespace + ".ReservationNumber",m_id);
		sqlSession.selectOne(namespace + ".ReservationDelete",m_id);
		sqlSession.selectOne(namespace + ".Reservation_NUMBER_PEOPLE_Delete",rn);

		
		
	}
	@Override
	public ReservationDTO ReservationSelect(String m_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".ReservationSelect", m_id);
	}
	@Override
	public String SearchPW(String m_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".SearchPW",m_id);
	}

}
