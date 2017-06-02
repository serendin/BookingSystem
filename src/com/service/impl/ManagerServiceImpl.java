package com.service.impl;

import com.bean.Manager;
import com.dao.ManagerDao;
import com.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {

	private ManagerDao managerDao;

	public void setManagerDao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}

	public boolean check(Manager manager) {
		if (managerDao.check(manager))
			return true;
		else
			return false;

	}
}
