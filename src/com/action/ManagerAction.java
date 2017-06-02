package com.action;

import com.bean.Manager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ManagerService;


public class ManagerAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private ManagerService managerService;
    private Manager manager;
    
	public ManagerService getManagerService() {
		return managerService;
	}
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	
	public String login(){
		if(managerService.check(manager)){
			this.addActionError("用户名或密码错误");
			return ERROR;
		}
		else{
			ActionContext.getContext().getSession().put("manager", manager);
			return SUCCESS;
		}
	}
	public String logout(){
		ActionContext.getContext().getSession().put("manager", null);
		return "logout";
	}

	
	
}
