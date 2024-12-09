package com.admin.servlet;

import java.io.IOException;

import com.DAO.BookDao;
import com.DAO.BookDaoImpl;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
@MultipartConfig
public class BookDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));

			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			boolean f = dao.DeleteBooks(id);
			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "delete sucessfully");
				resp.sendRedirect("admin/all_book.jsp");
			} else {
				session.setAttribute("succMsg", "Something wrong on server");
				resp.sendRedirect("admin/all_book.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
