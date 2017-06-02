package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Order;
import com.bean.Room;
import com.bean.User;
import com.dao.OrderDao;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao{

	public void save(Order order){
		this.getHibernateTemplate().save(order);
	}
	public void update(Order order){
		this.getHibernateTemplate().update(order);
	}
	public Order findById(int id) {
		return this.getHibernateTemplate().get(Order.class, id);
	}
	public void delete(Order order) {
		this.getHibernateTemplate().delete(order);	
	}
	@SuppressWarnings({ "unchecked"})
	public List<Order> findByUser(User user) {
		String hql="from Order where user=?";
		List<Order> list=this.getHibernateTemplate().find(hql,user);
		/*for(int i=0;i<list.size();i++){
			String hhql="from Room where roomid=?";
			List<Room> roomlist=this.getHibernateTemplate().find(hhql,list.get(i).getRoom().getRoomid());
			Room room=roomlist.get(0);
			String hhhql="from Hotel where hotelid=?";
			List<Hotel> hotellist=this.getHibernateTemplate().find(hhhql,room.getHotel().getHotelid());
			room.getHotel().setName(hotellist.get(0).getName());
			list.get(i).setRoom(room);
		}*/
		if(list!=null)
		return list;
		else return null;
	}
	@SuppressWarnings("unchecked")
	public List<Order> findAll() {
		String hql="from Order";
		List<Order> list=this.getHibernateTemplate().find(hql);
		return list;
	}
	@SuppressWarnings("unchecked")
	public List<Order> findByRoom(Room room) {
		String hql="from Order where room=?";
		List<Order> list=this.getHibernateTemplate().find(hql,room);
		if(list!=null)
		return list;
		else return null;
	}
}
