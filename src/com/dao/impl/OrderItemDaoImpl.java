package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Order;
import com.bean.OrderItem;
import com.dao.OrderItemDao;

public class OrderItemDaoImpl extends HibernateDaoSupport implements OrderItemDao{

	public void save(OrderItem orderItem){
		this.getHibernateTemplate().save(orderItem);
	}
	public void update(OrderItem orderItem){
	    this.getHibernateTemplate().update(orderItem);
	}
	public OrderItem findById(int id) {
		return this.getHibernateTemplate().get(OrderItem.class, id);
	}
	public void delete(OrderItem orderItem) {
		this.getHibernateTemplate().delete(orderItem);
	}
	@SuppressWarnings("unchecked")
	public List<OrderItem> find(Order order) {
		String hql="from OrderItem where order=?";
		List<OrderItem> list=this.getHibernateTemplate().find(hql,order);
		return list;
	}
}
