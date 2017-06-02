package com.action;

import java.util.List;

import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;


public class UserAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private UserService userService;
    private User user;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserService getUserService() {
		return userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String register(){
		if(user!=null){
		userService.save(user);
		ActionContext.getContext().getSession().put("user", user);
		return "register";
		}
		else return "error";
	}
	
	public String login(){
		User existUser=userService.check(user);
		if(existUser!=null){
		ActionContext.getContext().getSession().put("user", existUser);
			return LOGIN;
		}
		else{
			this.addActionError("用户名或密码错误");
			return ERROR;
			
		}
	}
	public String logout(){
		
		ActionContext.getContext().getSession().put("user", null);
		return "logout";
	}
	public String findall(){
		List<User> userlist=userService.findAll();
		if(userlist!=null){
			ActionContext.getContext().getSession().put("userlist", userlist);
			return "findall";
		}
		else{
			this.addActionError("未找到用户");
			return ERROR;
			
		}
	}
	public String findById(){
		User existuser=userService.findById(user.getUserid());
		if(user!=null){
			ActionContext.getContext().getSession().put("user",existuser);
			return "findbyid";
		}
		else{
			this.addActionError("未找到用户信息");
			return ERROR;
			
		}
	}
}
