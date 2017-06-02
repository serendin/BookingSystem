package com.service.impl;

import java.util.List;

import com.bean.User;
import com.dao.UserDao;
import com.service.UserService;


public class UserServiceImpl implements UserService{

	private UserDao userDao;
	public void setUserDao(UserDao userDao){
		this.userDao=userDao;
	}
	public void save(User user){
		 userDao.save(user);
	}
	public void update(User user){
		userDao.update(user);
	}
	public User check(User user){
		User existUser=userDao.findByUsernameAndPassword(user);
		return existUser;
	}
	public List<User> findAll() {
		return userDao.findAll();
	}
	public User findById(Integer userid) {
		return userDao.findById(userid);
	}
}
