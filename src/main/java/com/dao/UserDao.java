package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.User;
import com.util.JDBC_Util;

public class UserDao {

	Connection con = JDBC_Util.dbConnection();
	
	public ResultSet login(String username, String password) {
		
		ResultSet rs = null;
		try {
			PreparedStatement pst = con.prepareStatement("select * from users where username=? and password=?");
			pst.setString(1, username);
			pst.setString(2, password);
			rs = pst.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public String saveUser(User user) {
		
		try {
			PreparedStatement pst = con.prepareStatement("insert into users values(?,?,?,?,?)");
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			pst.setString(3, user.getEmail());
			pst.setString(4, user.getGender());
			pst.setString(5, user.getCity());
			
			int value = pst.executeUpdate();
			if(value > 0) {
				return "User registered succesfully";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
