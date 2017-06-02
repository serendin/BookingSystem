package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Hotel;
import com.dao.HotelDao;

public class HotelDaoImpl extends HibernateDaoSupport implements HotelDao{

	public Hotel findById(int id) {
		return this.getHibernateTemplate().get(Hotel.class, id);
	}
	public void save(Hotel hotel){
		this.getHibernateTemplate().save(hotel);
	}
	public void update(Hotel hotel){
		this.getHibernateTemplate().update(hotel);
	}
	public void delete(Hotel hotel) {
		this.getHibernateTemplate().delete(hotel);
	}
	@SuppressWarnings("unchecked")
	public List<Hotel> findByCity(String city) {
		String hql="from Hotel where city=? and isopen=?";
		String isopen="已发布";
		List<Hotel> list=this.getHibernateTemplate().find(hql,city,isopen);
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<Hotel> findAllin() {
		String hql="from Hotel where isopen=?";
		String isopen="已发布";
		List<Hotel> list=this.getHibernateTemplate().find(hql,isopen);
		return list;
	}
	@SuppressWarnings("unchecked")
	public List<Hotel> findAllout() {
		String hql="from Hotel where isopen=?";
		String isopen="申请中";
		List<Hotel> list=this.getHibernateTemplate().find(hql,isopen);
		return list;
	}
	@SuppressWarnings("unchecked")
	public Hotel findByUser(String linkid) {
		String hql="from Hotel where linkid=?";
		List<Hotel> list=this.getHibernateTemplate().find(hql,linkid);
		if(list!=null)
		return list.get(0);
		else return null;
	}
	
}
