package com.servlet;

import java.io.IOException;

import com.entity.User;
import com.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		User user = new User();
		
		user.setUsername(req.getParameter("username"));
		user.setPassword(req.getParameter("password"));
		user.setEmail(req.getParameter("email"));
		user.setGender(req.getParameter("gender"));
		user.setCity(req.getParameter("city"));
		
		UserService service = new UserService();
		String msg = service.saveUser(user);
		
		if(msg == null) {
			req.getRequestDispatcher("register.jsp").include(req, resp);
		}
		else {
			req.setAttribute("message", msg);
			req.getRequestDispatcher("register.jsp").include(req, resp);
		}
	}
}
