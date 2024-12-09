package com.user.servlet;

import java.io.IOException;




import com.DAO.UserDAo;
import com.DAO.UserDaoImpl;
import com.DB.DBConnect;
import com.entity.USER;

import jakarta.servlet.annotation.WebServlet;

//@WebServlet("/register")
@WebServlet("/register") 
public class RegisterServlet extends jakarta.servlet.http.HttpServlet {

	

		 @Override
	protected void doPost(jakarta.servlet.http.HttpServletRequest req, jakarta.servlet.http.HttpServletResponse resp)
			throws jakarta.servlet.ServletException, IOException {
	try {
		
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			String phno = req.getParameter("phno");

			String check = req.getParameter("check");
			System.out.println(name + email + password + phno+ "-"+check);
			USER us = new USER();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPaassword(password);
			jakarta.servlet.http.HttpSession session = req.getSession();

			if (check != null) {
				UserDaoImpl dao = new UserDaoImpl(DBConnect.getConn());
				System.out.println(" Success");
				boolean f = dao.userRegister(us);
				System.out.println(" Success continute");

				if (f) {
					System.out.println("User register Success");
						session.setAttribute("succMsg", "User register Success");
						resp.sendRedirect("Register.jsp");
				} else {
					System.out.println("Something wrong on server...");
					session.setAttribute("failedMsg", "Something wrong on server...");
					resp.sendRedirect("Register.jsp");

				}
			} else {
				System.out.println("please check term and edition...");
				session.setAttribute("failedMsg", "please check term and edition.");
				resp.sendRedirect("Register.jsp");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
