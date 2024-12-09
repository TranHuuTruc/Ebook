package com.user.servlet;

import java.io.IOException;

import com.DAO.BookDao;
import com.DAO.BookDaoImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.entity.Cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int bid = Integer.parseInt(req.getParameter("bid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			BookDtls b = dao.getBookById(bid);
			Cart cart = new Cart();
			cart.setBid(bid);
			cart.setUid(uid);
			cart.setBookName(b.getBookName());
			cart.setAuthor(b.getAuthor());
			cart.setPrice(Double.parseDouble(b.getPrice()));
			cart.setTotalPrice(Double.parseDouble(b.getPrice()));
			
			CartDAOImpl dao2 = new CartDAOImpl(DBConnect.getConn());
			boolean f = dao2.addCart(cart);
			HttpSession session	= req.getSession();
			if(f) {
				System.out.println("add Cart success");
				session.setAttribute("addCart", "Book Added to cart success");
				resp.sendRedirect("all_NewBook.jsp");
			}else {
				System.out.println("add Cart be FAiled");
				session.setAttribute("failed", "Something wrong on server");
				resp.sendRedirect("all_NewBook.jsp");

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
