package com.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.bean.Order;
import com.bean.Room;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.OrderService;

public class OrderAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private OrderService orderService;
	private Order order;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	private List<String> livename;

	public List<String> getLivename() {
		return livename;
	}

	public void setLivename(List<String> livename) {
		this.livename = livename;
	}

	public String save() {
		order.setStatus("未入住");
		order.setOrderDate(new Date());
		order.setRoom((Room) ActionContext.getContext().getSession()
				.get("room"));
		order.setUser((User) ActionContext.getContext().getSession()
				.get("user"));
		orderService.save(order);
		ActionContext.getContext().getSession().put("livename", livename);
		ActionContext.getContext().getSession().put("order", order);
		return "saveSuccess";
	}

	public String update() {
		orderService.update(order);
		return "updateSuccess";
	}

	public String delete() {
		order = orderService.findById(order.getOrderid());
		orderService.delete(order);
		return "deleteSuccess";
	}

	public String findByUser() {
		User user = (User) ActionContext.getContext().getSession().get("user");
		if (user == null) {
			this.addActionError("请先登录");
			return ERROR;
		} else {
			List<Order> orderlist = orderService.findByUser(user);
			//System.out.println(orderlist.get(0).getRoom().getName());
			if (orderlist != null) {
				ActionContext.getContext().getSession()
						.put("orderlist", orderlist);
				return "findbyuser";
			} else {
				this.addActionError("无订单信息");
				return ERROR;

			}
		}
	}

	@SuppressWarnings({ "unchecked" })
	public String findByRoom() {
		List<Room> roomlist = (List<Room>) ActionContext.getContext()
				.getSession().get("myroomlist");
		List<Order> bookorderlist = new ArrayList<Order>();
		List<Order> liveorderlist = new ArrayList<Order>();
		List<Order> leftorderlist = new ArrayList<Order>();
		for (int i = 0; i < roomlist.size(); i++) {
			List<Order> o = orderService.findByRoom(roomlist.get(i));
			for (int j = 0; j < o.size(); j++) {
				if (o.get(j).getStatus().equals("未入住"))
					bookorderlist.add(o.get(j));
				else if (o.get(j).getStatus().equals("已入住"))
					liveorderlist.add(o.get(j));
				else if (o.get(j).getStatus().equals("已离店"))
					leftorderlist.add(o.get(j));
			}
		}
		ActionContext.getContext().getSession()
				.put("bookorderlist", bookorderlist);
		ActionContext.getContext().getSession()
				.put("liveorderlist", liveorderlist);
		ActionContext.getContext().getSession()
				.put("leftorderlist", leftorderlist);
		return "findbyroom";

	}

	public String live() {
		order = orderService.findById(order.getOrderid());
		order.setStatus("已入住");
		orderService.update(order);
		return "liveSuccess";
	}

	public String left() {
		order = orderService.findById(order.getOrderid());
		order.setStatus("已离店");
		orderService.update(order);
		return "liveSuccess";
	}
}
