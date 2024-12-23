<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: edit Book</title>
<%@include file="Navbar.jsp"%>
<%@include file="Allcss.jsp"%>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
						BookDtls b = dao.getBookById(id);
						%>

						<br>
						<form action="../editbooks" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputPassword1">  id  </label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									aria-describedby="emailHelp" name="bid" required="required"
									value="<%=b.getBookId()%>">
							</div>
						
							<div class="form-group">
								<label for="exampleInputPassword1">Book name* </label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									aria-describedby="emailHelp" name="bname" required="required"
									value="<%=b.getBookName()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Author Name* </label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									aria-describedby="emailHelp" name="author" required="required"
									value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Price* </label> <input
									type="number" class="form-control" id="exampleInputPassword1"
									name="price" required="required" value="<%=b.getPrice()%>">
							</div>
							<%-- 	<div class="form-group">
								<label for="exampleInputPassword1">Book categories* </label> <select
									type="text" class="form-control" id="inputState"
									name="categories" required="required"
									value="<%=b.getBookCategory()%>">
									<%
									if ("New".equals(b.getBookCategory())) {
									%>
									<option value="New">New Book</option>
									<option value="Old">Old Book</option>
																
									<%
									} else {
									%>
									<option value="Old">Old book</option>
									<option value="New">New Book</option>
									<%
									}
									%>
								</select>
							</div> --%>
							<div class="form-group">
								<label for="exampleInputPassword1">Book Status* </label> <select
									type="text" class="form-control" id="inputState" name="status"
									required="required" value="<%=b.getStatus()%>">
									<%
									if ("Active".equals(b.getStatus())) {
									%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<%
									} else {
									%>
									<option value="Inactive">Inactive</option>
									<option value="Active">Active</option>
									<%
									}
									%>
								</select>
							</div>
							<%-- <label for="exampleFormControlFile1">Upload Photo </label> <input
								type="file" class="form-control-file" id="exampleInputPassword1"
								name="bimg" value="<%=b.getPhotoName()%>">
 --%>
							<button type="submit" class="btn btn-primary">comfim</button>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
	</div>
</body>
</html>