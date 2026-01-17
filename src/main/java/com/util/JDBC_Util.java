package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBC_Util {

	private static final String url = "jdbc:mysql://localhost:3306/userservletdb";
	
	private static final String username = "root";
	
	private static final String password = "1234";
	
	public static Connection dbConnection() {
		
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
}
