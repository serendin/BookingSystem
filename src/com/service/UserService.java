package com.service;

import java.util.List;

import com.bean.User;


public interface UserService {

	public void save(User user);
	public void update(User user);
	public User check(User user);
	public List<User> findAll();
	public User findById(Integer userid);
}
