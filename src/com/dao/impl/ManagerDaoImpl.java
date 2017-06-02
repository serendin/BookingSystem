package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Manager;
import com.dao.ManagerDao;

public class ManagerDaoImpl extends HibernateDaoSupport implements ManagerDao{

	@SuppressWarnings("unchecked")
	public boolean check(Manager manager){
		if(manager!=null){
			String hql="from Manager where id=? and password=?";
			List<Manager> list=this.getHibernateTemplate().find(hql,manager.getManagerid(),manager.getPassword());
			if(list.size()>0) return true;
			else return false;
		}
		else return false;
	}
}
