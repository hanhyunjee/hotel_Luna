package com.hotel.HH.DAO;

import com.hotel.HH.DTO.MemberDTO;

public interface MemberDAO {

	public MemberDTO duplicateCheck(String m_id);

	public void MemberInsert(MemberDTO dto);

	public String MemberLogin(MemberDTO dto);

}
