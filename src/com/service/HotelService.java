package com.service;

import java.util.List;

import com.bean.Hotel;


public interface HotelService {

	public void save(Hotel hotel);
	public void update(Hotel hotel);
	public Hotel findById(int id);
    public void delete(Hotel hotel);
	public List<Hotel> findByCity(String city);
	public List<Hotel> findAllin();
	public List<Hotel> findAllout();
	public Hotel findByUser(String linkid);
}
