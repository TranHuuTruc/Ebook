
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDao"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin: all books</title>

</head>
<c:if test="${empty userobj }">
<c:redirect url="../Login.jsp"/>
</c:if>
<body>
	<%@include file="Navbar.jsp"%>
	<%@include file="Allcss.jsp"%>
	<h3>Helloo admin</h3>

	<c:if test="${not empty succMsg }">
		<p style="font-weight: bold;" class="text-center text-success">${succMsg }</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<table class="table">

		<thead>
			<tr>
				<th scope="col">ID</th>

				<th scope="col">Image</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>

			</tr>
		</thead>
		<tbody>
			<%
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllBooks();
			for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookId()%></td>
				<td><img src="../book/<%=b.getPhotoName()%>"
					style="width: 50px; height: 50px;"></td>

				<td><%=b.getBookName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>

				<td><a href="edit_books.jsp?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-primary">Edit</a> <a
					href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger">
						Delete</a></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>
</body>

</html>