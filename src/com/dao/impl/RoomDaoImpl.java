package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Hotel;
import com.bean.Room;
import com.dao.RoomDao;

public class RoomDaoImpl extends HibernateDaoSupport implements RoomDao{

	public void save(Room room){
		this.getHibernateTemplate().save(room);
	}
	public void update(Room room){
		this.getHibernateTemplate().update(room);
	}
	public Room findById(int id) {
		return this.getHibernateTemplate().get(Room.class, id);
	}
	public void delete(Room room) {
		this.getHibernateTemplate().delete(room);
	}
	@SuppressWarnings("unchecked")
	public List<Room> findByHotel(Hotel hotel) {
		String hql="from Room where hotel=?";
		List<Room> list=this.getHibernateTemplate().find(hql,hotel);
		return list;
	}
}
