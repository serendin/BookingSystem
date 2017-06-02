package com.bean;

public class OrderItem {

	private Integer orderItemid;
	private Order order;
	private String name;
	
	public OrderItem(){}

	public OrderItem(Integer orderItemid, Order order, String name) {
		super();
		this.orderItemid = orderItemid;
		this.order = order;
		this.name = name;
	}

	public Integer getOrderItemid() {
		return orderItemid;
	}

	public void setOrderItemid(Integer orderItemid) {
		this.orderItemid = orderItemid;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
