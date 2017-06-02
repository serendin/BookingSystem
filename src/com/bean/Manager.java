package com.bean;

public class Manager {

	private Integer managerid;
	private String password;

	public Integer getManagerid() {
		return managerid;
	}
	public void setManagerid(Integer managerid) {
		this.managerid = managerid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Manager(){}
	public Manager(Integer managerid, String password) {
		super();
		this.managerid = managerid;
		this.password = password;
	}

	
}
