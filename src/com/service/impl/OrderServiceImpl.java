package com.service.impl;

import java.util.List;

import com.bean.Order;
import com.bean.Room;
import com.bean.User;
import com.dao.OrderDao;
import com.service.OrderService;


public class OrderServiceImpl implements OrderService{

	private OrderDao orderDao;
	public void setOrderDao(OrderDao orderDao){
		this.orderDao=orderDao;
	}
	public void save(Order order){
		orderDao.save(order);
	}
	public void update(Order order){
		orderDao.update(order);
	}
	public Order findById(int id) {
		return orderDao.findById(id);
	}
	public void delete(Order order) {
		orderDao.delete(order);
	}
	public List<Order> findByUser(User user) {
		return orderDao.findByUser(user);
	}
	public List<Order> findAll() {
		return orderDao.findAll();
	}
	public List<Order> findByRoom(Room room) {
		return orderDao.findByRoom(room);
	}

}
