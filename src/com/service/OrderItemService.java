package com.service;

import java.util.List;

import com.bean.Order;
import com.bean.OrderItem;


public interface OrderItemService {

	public OrderItem findById(int id);
	public void save(OrderItem orderItem);
	public void update(OrderItem orderItem);
	public void delete(OrderItem orderItem);
	public List<OrderItem> find(Order order);
}
