package com.service.impl;

import java.util.List;

import com.bean.Hotel;
import com.bean.Room;
import com.dao.RoomDao;
import com.service.RoomService;


public class RoomServiceImpl implements RoomService{

	private RoomDao roomDao;
	public void setRoomDao(RoomDao roomDao){
		this.roomDao=roomDao;
	}
	public void save(Room room){
		roomDao.save(room);
	}
	public void update(Room room){
		roomDao.update(room);
	}
	public Room findById(int id) {
		return roomDao.findById(id);
	}
	public void delete(Room room) {
		roomDao.delete(room);
	}
	public List<Room> findByHotel(Hotel hotel) {
		return roomDao.findByHotel(hotel);
	}
	
}
