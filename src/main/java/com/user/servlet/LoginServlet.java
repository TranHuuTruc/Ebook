package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAo;
import com.DAO.UserDaoImpl;
import com.DB.DBConnect;
import com.entity.USER;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		UserDaoImpl dao =  new UserDaoImpl(DBConnect.getConn());
		HttpSession session = req.getSession();
		if ("tranhuutruc287@gmail.com".equals(email)&& "admin".equals(password)){
			USER us = new USER();
			us.setName("Admin");
			session.setAttribute("userobj", us);
			resp.sendRedirect("admin/Home.jsp");
		}else {
			USER us = dao.login(email, password);
			if(us != null) {
				session.setAttribute("userobj", us);
				resp.sendRedirect("home.jsp");

			}else {
				session.setAttribute("failedMsg", "email & password invalid");
				resp.sendRedirect("Login.jsp");
				
			}
//			resp.sendRedirect("Home.jsp");
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	}



}
