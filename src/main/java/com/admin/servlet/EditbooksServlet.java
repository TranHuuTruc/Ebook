package com.admin.servlet;

import java.io.IOException;

import com.DAO.BookDao;
import com.DAO.BookDaoImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.mysql.cj.xdevapi.DbDoc;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/editbooks")
@MultipartConfig

public class EditbooksServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bname");
			String idParam = req.getParameter("bid");
			int id = Integer.parseInt(idParam);
			
			String author = req.getParameter("author");
			String price = req.getParameter("price");
//			String category = req.getParameter("categories");
			String status = req.getParameter("status");
			
			BookDtls b = new BookDtls();
			b.setBookId(id);
			b.setBookName(bookName);
			b.setAuthor(author);
			b.setPrice(price);
			b.setStatus(status);
			
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			boolean f = dao.updateEditBooks(b);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("succMsg", "Book update sucessfull");
				resp.sendRedirect("admin/all_book.jsp");
			}else {
				session.setAttribute("succMsg", "something wrong on server");
				resp.sendRedirect("admin/all_book.jsp");

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
