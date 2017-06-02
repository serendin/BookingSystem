package com.bean;

import java.util.Date;
import java.util.Set;

public class Order {

	private Integer orderid;
	private Room room;
	private String phone;
	private Integer count;
	private double price;
	private String checkinDate;
	private Date orderDate;
	private Integer day;
    private User user;
    private String leaveWord;
    private String status;
    private Set<OrderItem> orderItem;
    
    public Order(){}
	public Order(Integer orderid, Room room, String phone, Integer count, double price,
			String checkinDate, Date orderDate, Integer day, User user,
			String leaveWord, String status, Set<OrderItem> orderItem) {
		super();
		this.orderid = orderid;
		this.room = room;
		this.phone = phone;
		this.count = count;
		this.price = price;
		this.checkinDate = checkinDate;
		this.orderDate = orderDate;
		this.day = day;
		this.user=user;
		this.leaveWord = leaveWord;
		this.status = status;
		this.orderItem = orderItem;
	}

	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCheckinDate() {
		return checkinDate;
	}
	public void setCheckinDate(String checkinDate) {
		this.checkinDate = checkinDate;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Integer getDay() {
		return day;
	}
	public void setDay(Integer day) {
		this.day = day;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getLeaveWord() {
		return leaveWord;
	}
	public void setLeaveWord(String leaveWord) {
		this.leaveWord = leaveWord;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Set<OrderItem> getOrderItem() {
		return orderItem;
	}
	public void setOrderItem(Set<OrderItem> orderItem) {
		this.orderItem = orderItem;
	}
    
}
