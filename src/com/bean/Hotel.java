package com.bean;

import java.util.Set;

public class Hotel {

	private Integer hotelid;
	private String linkid;
	private String linkname;
	private String phone;
	private String name;
	private String type;
	private String city;
	private String address;
	private String introduction;
	private String pictureUrl;
	private String isopen;
	private Set<Room> rooms;
	
	public Hotel(){}
	public Hotel(Integer hotelid, String linkid, String linkname, String phone,
			String name, String type, String city, String address, String introduction,
			String pictureUrl, String isopen, Set<Room> rooms) {
		super();
		this.hotelid = hotelid;
		this.linkid = linkid;
		this.linkname = linkname;
		this.phone = phone;
		this.name = name;
		this.type = type;
		this.city = city;
		this.address = address;
		this.introduction = introduction;
		this.pictureUrl = pictureUrl;
		this.isopen=isopen;
		this.rooms = rooms;
	}

	public Integer getHotelid() {
		return hotelid;
	}
	public void setHotelid(Integer hotelid) {
		this.hotelid = hotelid;
	}
	public String getLinkid() {
		return linkid;
	}
	public void setLinkid(String linkid) {
		this.linkid = linkid;
	}
	public String getLinkname() {
		return linkname;
	}
	public void setLinkname(String linkname) {
		this.linkname = linkname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	public String getIsopen() {
		return isopen;
	}
	public void setIsopen(String isopen) {
		this.isopen = isopen;
	}
	public Set<Room> getRooms() {
		return rooms;
	}
	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}	
}
