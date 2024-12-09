<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>all old book</title>
<%@include file="All_component/Allcss.jsp"%>
<%@include file="All_component/Navbar.jsp"%>
</head>
<body>
	<div class="container">
		<h3 class="text-center">Old Books</h3>
		<div class="row">

			<%
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getOldBook();
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
							<a href="" class="btn btn-success btn-sm ml-4">view detail</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-sack-dollar"></i><%=b.getPrice()%></a>
						</div>
					</div>

				</div>
			</div>
			<%
			}
			%>

		</div>
		<br>
	</div>

	<%@include file="All_component/Footer.jsp"%>
</body>
</html>