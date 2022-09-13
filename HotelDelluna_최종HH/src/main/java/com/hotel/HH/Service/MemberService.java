package com.hotel.HH.Service;

import com.hotel.HH.DTO.MemberDTO;

public interface MemberService {
	
	public MemberDTO duplicateCheck(String m_id);
	
	public void MemberInsert(MemberDTO dto);
	
	public String MemberLogin(MemberDTO dto);
}
