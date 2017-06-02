package com.action;

import java.util.List;

import com.bean.Order;
import com.bean.OrderItem;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.OrderItemService;


public class OrderItemAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private OrderItemService orderItemService;
    private OrderItem orderItem;
    
	public OrderItemService getOrderItemService() {
		return orderItemService;
	}
	public void setOrderItemService(OrderItemService orderItemService) {
		this.orderItemService = orderItemService;
	}
	public OrderItem getOrderItem() {
		return orderItem;
	}
	public void setOrderItem(OrderItem orderItem) {
		this.orderItem = orderItem;
	}
	
	public String save(){
		@SuppressWarnings("unchecked")
		List<String> livename=(List<String>)ActionContext.getContext().getSession().get("livename");
		Order order=(Order)ActionContext.getContext().getSession().get("order");
		for(int i=0;i<livename.size();i++){
			OrderItem oi=new OrderItem();
			oi.setName(livename.get(i));
			oi.setOrder(order);
			orderItemService.save(oi);
		}
		return "saveSuccess";
	}
	
	public String update(){
		orderItemService.update(orderItem);
		return "updateSuccess";
	}
  
	public String delete(){
		orderItem=orderItemService.findById(orderItem.getOrderItemid());
		orderItemService.delete(orderItem);
		return "deleteSuccess";
	}
   
	public String find(){
		List<OrderItem> orderItemlist=orderItemService.find(orderItem.getOrder());
			ActionContext.getContext().getSession().put("orderItemlist", orderItemlist);
			return "findSuccess";
	}

}
