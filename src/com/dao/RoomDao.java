package com.dao;

import java.util.List;

import com.bean.Hotel;
import com.bean.Room;

public interface RoomDao {

	public Room findById(int id);
	public void save(Room room);
	public void update(Room room);
	public void delete(Room room);
	public List<Room> findByHotel(Hotel hotel);
}
