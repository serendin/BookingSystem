package com.service.impl;

import java.util.List;

import com.bean.Order;
import com.bean.OrderItem;
import com.dao.OrderItemDao;
import com.service.OrderItemService;


public class OrderItemServiceImpl implements OrderItemService{

	private OrderItemDao orderItemDao;
	public void setOrderItemDao(OrderItemDao orderItemDao){
		this.orderItemDao=orderItemDao;
	}
	public void save(OrderItem orderItem){
		 orderItemDao.save(orderItem);
	}
	public void update(OrderItem orderItem){
		orderItemDao.update(orderItem);
	}
	public OrderItem findById(int id) {
		return orderItemDao.findById(id);
	}
	public void delete(OrderItem orderItem) {
		orderItemDao.delete(orderItem);
	}
	public List<OrderItem> find(Order order) {
		return orderItemDao.find(order);
	}
}
