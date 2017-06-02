package com.bean;

import java.util.Set;


public class User {

	private Integer userid;
	private String name;
	private String username;
	private String password;
	private String sex;
	private String email;
	private Set<Order> orders;
	
	public User(){}
	public User(String name, String username, String password, String sex, String email, Set<Order> orders) {
		super();
		this.name = name;
		this.username = username;
		this.password = password;
		this.sex=sex;
		this.email=email;
		this.orders=orders;
	}

	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	
}
