package com.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.UserDao;
import com.entity.User;
import com.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		UserService service = new UserService();
		ResultSet rs = service.login(username, password);
		
		try {
			if(rs.next()) {
				User user = new User();
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setGender(rs.getString("gender"));
				user.setCity(rs.getString("city"));
				
				req.setAttribute("user", user);
				req.getRequestDispatcher("profile.jsp").forward(req, resp);
			}
			else {
				req.setAttribute("message", "Invalid username or password");
				req.getRequestDispatcher("login.jsp").include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
