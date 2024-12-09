
<%@page import="com.entity.USER"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@page import="com.DAO.BookDao"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>he thong sach</title>
</head>
<body>
	<%@include file="All_component/Allcss.jsp"%>
	<%@include file="All_component/Navbar.jsp"%>

	<style type="text/css">
.back-img {
	background: url("img/b2.jpg");
	height: 70vh;
	width: 100%;
	background-repeat: x;
	background-size: cover;
}
</style>

	<div class="container-fluid back-img">

		<h2 class="text-center text-danger">Hệ Thống Quản lí Sách</h2>
	</div>

	<%
	Connection conn = DBConnect.getConn();
	out.println(conn);
	%>
	<!-- bat dau recent book -->
	<div class="container">
		<h3 class="text-center">Recent Books</h3>
		<div class="row">
			<%
			USER u = (USER) session.getAttribute("userobj");
			%>
			<%
			BookDaoImpl dao1 = new BookDaoImpl(DBConnect.getConn());
			List<BookDtls> list1 = dao1.getRecentBook();
			for (BookDtls b : list1) {
			%>
			<div class="col-md-3">
				<div class="card">
					<!-- 		<div class="card crd-m1"> -->

					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>

						<%
						if (b.getBookCategory().equals("Old")) {
						%>
						<p>
							Catergories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="view_Books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-sack-dollar"></i><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						<p>
							Catergories:<%=b.getBookCategory()%></p>
						<div class="row">
							<%
							if (u == null) {
							%>

							<a href="Login.jsp" class="btn btn-danger btn-sm ml-2">Add
								cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-1">Add cart</a>
							<%
							}
							%>

							<a href="view_Books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-sack-dollar"></i><%=b.getPrice()%></a>
						</div>

						<%
						}
						%>
					</div>
					<!-- </div> -->
				</div>
			</div>
			<%
			}
			%>
		</div>
		
		<div class="text-center mt-1">
			<a href="all_RecentB.jsp" class="btn btn-danger btn-sm text-white">view
				all</a>
		</div>
		<br>
	</div>
	<hr>

	<!-- ket thuc recent book-->
	<!-- bat dau new book -->
	<div class="container">
		<h3 class="text-center">New Books</h3>
		<div class="row">

			<%
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card">


					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Catergories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a
								href="view_Books.jsp" class="btn btn-success btn-sm ml-1">view
								detail</a> <a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-sack-dollar"></i><%=b.getPrice()%></a>
						</div>

					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center mt-1">
			<a href="all_NewBook.jsp" class="btn btn-danger btn-sm text-white">view
				all</a>
		</div>
		<br>
	</div>
	<hr style="height: 2px;">

	<!-- ket thuc new book-->
	<!-- bat dau old book -->
	<div class="container">
		<h3 class="text-center">Old Books</h3>
		<div class="row">

			<%
			BookDaoImpl dao2 = new BookDaoImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getOldBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card">


					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Catergories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="view_Books.jsp" class="btn btn-success btn-sm ml-4">view
								detail</a> <a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-sack-dollar"></i><%=b.getPrice()%></a>
						</div>
					</div>

				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center mt-1">
			<a href="all_OldBo.jsp" class="btn btn-danger btn-sm text-white">view
				all</a>
		</div>
		<br>
	</div>
	<!-- ket thuc old book-->
	<%@include file="All_component/Footer.jsp"%>
</body>
</html>
