package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.swing.text.StyledEditorKit.BoldAction;

import com.DAO.BookDao;
import com.DAO.BookDaoImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.mysql.cj.Session;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String category = req.getParameter("categories");
			String status = req.getParameter("status");
			Part photo = req.getPart("bimg");
			String fileName = photo.getSubmittedFileName();

			BookDtls b = new BookDtls(bookName, author, price, category, status, fileName, "admin");

//	System.out.println(b); 
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			
			boolean f = dao.addBooks(b);
			HttpSession session = req.getSession();

			if (f) {
//				System.out.println("f da dung");
				String path = getServletContext().getRealPath("") + "book";
				File file = new File(path);
				photo.write(path + File.separator + fileName);
				
				session.setAttribute("succMsg", "Book  add sucessfully");
				resp.sendRedirect("admin/add_book.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong on servlet");
				resp.sendRedirect("admin/add_book.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
