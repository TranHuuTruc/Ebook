<%@page import="java.awt.print.Book"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Books</title>
</head>
<body>
	<%@include file="All_component/Allcss.jsp"%>
	<%@include file="All_component/Navbar.jsp"%>
	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
	BookDtls b = dao.getBookById(bid);
	%>



	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="book/<%=b.getPhotoName()%>"
					style="height: 150px; width: 150px"> <br>
				<h4>
					Book Name: <span class="text-success"><%=b.getBookName()%></span>
				</h4>
				<h4>
					Author Name: <span class="text-success"><%=b.getAuthor()%></span>
				</h4>
				<h4>
					Category: <span class="text-success"><%=b.getBookCategory()%></span>
				</h4>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=b.getBookName()%></h2>
				<h4>liên lạc với tôi</h4>
				<h4 class="text-primary"><i class="fa-solid fa-inbox"></i>email:<%=b.getEmail()%></h4>
				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-money-bill-wave fa-3x"></i>
						<p>return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-undo-alt fa-3x"></i>
						<p>return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fas fa-truck-moving fa-3x"></i>
						<p>Free shiping</p>
					</div>
				</div>
				<div class="text-center p-3">
					<a href="" class="btn btn-primary"><i
						class="fa-solid fa-cart-shopping"></i>Add cart</a> <a href=""
						class="btn btn-danger"><i
						class="fa-solid fa-money-check-dollar"></i> 300</a>

				</div>

			</div>


		</div>
	</div>

</body>
</html>