package com.dao;

import java.util.List;

import com.bean.User;

public interface UserDao {

	public void save(User user);
	public void update(User user);
	public User findByUsernameAndPassword(User user);
	public List<User> findAll();
	public User findById(Integer userid);
}
