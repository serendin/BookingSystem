package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.User;
import com.dao.UserDao;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	public void save(User user){
		this.getHibernateTemplate().save(user);
	}
	public void update(User user){
		System.out.println("update");
	}
	
	@SuppressWarnings("unchecked")
	public User findByUsernameAndPassword(User user) {
		if(user!=null){
			String hql="from User where username=? and password=?";
			List<User> list=this.getHibernateTemplate().find(hql,user.getUsername(),user.getPassword());
			if(list.size()>0) return list.get(0);
			else return null;
		}
		else return null;
	}
	@SuppressWarnings("unchecked")
	public List<User> findAll() {
		String hql="from User";
		List<User> list=this.getHibernateTemplate().find(hql);
		if(list.size()>0) return list;
		else return null;
	}
	@SuppressWarnings("unchecked")
	public User findById(Integer userid) {

			String hql="from User where userid=?";
			List<User> list=this.getHibernateTemplate().find(hql,userid);
			if(list.size()>0) return list.get(0);
			else return null;
	}
}
