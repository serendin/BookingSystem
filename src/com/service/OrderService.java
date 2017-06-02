package com.service;

import java.util.List;

import com.bean.Order;
import com.bean.Room;
import com.bean.User;


public interface OrderService {

	public Order findById(int id);
	public void save(Order order);
	public void update(Order order);
	public void delete(Order order);
	public List<Order> findByUser(User user);
	public List<Order> findAll();
	public List<Order> findByRoom(Room room);
	
}
