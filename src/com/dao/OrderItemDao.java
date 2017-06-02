package com.dao;

import java.util.List;

import com.bean.Order;
import com.bean.OrderItem;

public interface OrderItemDao {

	public OrderItem findById(int id);
	public void save(OrderItem orderItem);
	public void update(OrderItem orderItem);
	public void delete(OrderItem orderItem);
	public List<OrderItem> find(Order order);
}
