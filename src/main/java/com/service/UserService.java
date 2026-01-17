package com.service;

import java.sql.ResultSet;

import com.dao.UserDao;
import com.entity.User;

public class UserService {

	UserDao dao = new UserDao();
	
	public ResultSet login(String username, String password) {
		
		ResultSet result = dao.login(username, password);
		return result;
	}
	
	public String saveUser(User user) {
		String msg = dao.saveUser(user);
		return msg;
	}
}
