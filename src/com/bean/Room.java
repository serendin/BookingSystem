package com.bean;

import java.util.Set;

public class Room {

	private Integer roomid;
	private String name;
	private String bedType;
	private Integer count;
	private double price;
	private Hotel hotel;
	private double salePrice;
	private String pictureUrl;
	private Set<Order> orders;
	
	public Room(){}
	public Room(Integer roomid, String name, String bedType, Integer count, double price,
			Hotel hotel, double salePrice, String pictureUrl, Set<Order> orders) {
		super();
		this.roomid = roomid;
		this.name = name;
		this.bedType = bedType;
		this.count = count;
		this.price = price;
		this.hotel = hotel;
		this.salePrice = salePrice;
		this.pictureUrl = pictureUrl;
		this.orders=orders;
	}
	
	public Integer getRoomid() {
		return roomid;
	}
	public void setRoomid(Integer roomid) {
		this.roomid = roomid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBedType() {
		return bedType;
	}
	public void setBedType(String bedType) {
		this.bedType = bedType;
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
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	public double getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(double salePrice) {
		this.salePrice = salePrice;
	}
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	
}
