package com.service.impl;

import java.util.List;

import com.bean.Hotel;
import com.dao.HotelDao;
import com.service.HotelService;


public class HotelServiceImpl implements HotelService{

	private HotelDao hotelDao;

	public HotelDao getHotelDao() {
		return hotelDao;
	}
	public void setHotelDao(HotelDao hotelDao) {
		this.hotelDao = hotelDao;
	}
	public void save(Hotel hotel){
		 hotelDao.save(hotel);
	}
	public void update(Hotel hotel){
		hotelDao.update(hotel);
	}
	public Hotel findById(int id) {
		return hotelDao.findById(id);
	}
	public void delete(Hotel hotel) {
		hotelDao.delete(hotel);
	}
	public List<Hotel> findByCity(String city) {
		return hotelDao.findByCity(city);
	}
	public List<Hotel> findAllin() {
		return hotelDao.findAllin();
	}
	public List<Hotel> findAllout() {
		return hotelDao.findAllout();
	}
	public Hotel findByUser(String linkid) {
		return hotelDao.findByUser(linkid);
	}
}
