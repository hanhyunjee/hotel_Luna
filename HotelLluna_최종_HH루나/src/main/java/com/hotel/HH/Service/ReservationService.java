package com.hotel.HH.Service;

import com.hotel.HH.DTO.ReservationDTO;

public interface ReservationService {
	public void reservation_number_people(ReservationDTO dto);

	public int RoomPrice(ReservationDTO dto);

	public void reservationInsert(ReservationDTO dto);

	public int DuplicateFind(ReservationDTO dto);

	public String PayCheck(String m_id);

	public void PayCheckUpdate(String number);
	
	//수정
	public void ReservationDelete(String m_id);
	
	public ReservationDTO ReservationSelect(String m_id);
	
	public String SearchPW(String m_id);
	
	
}
