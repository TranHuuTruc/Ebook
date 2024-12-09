<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@page isELIgnored="false"%>
	
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Home</title>

</head>
	<%@include file="Allcss.jsp"%>
	<%@include file="Navbar.jsp"%>
<body>
<h5> user home</h5>
<c:if test="${empty userobj}">
<c:redirect url="../Login.jsp"/>
</c:if>
<c:if test ="${not empty userobj }">
<h5>Name:${userobj.name }</h5> 
</c:if>



<style type="text/css"> a{ text-decoration: none; color:
	black; } a:hover{ text-decoration: none; color: black; } </style> 
	<div class=" container">
		<div class=" row p-5">
			<div class=" col-md-3">
				<a href="add_book.jsp">
				
					<div class=" card">
						<div class=" card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i><br>
							<h4>Add books</h4>
							-------
						</div>
					</div></a>
			</div>


			<div class=" col-md-3">
				<a href="all_book.jsp">

				<div class=" card">
					<div class=" card-body text-center">
						<i class="fa-solid fa-book-open fa-3x text-pei text-danger"></i> <br>
						<h4>All books</h4>
						-------
					</div>
				</div></a>
			</div>
			<div class=" col-md-3">
				<a href="order.jsp">

				<div class=" card">
					<div class=" card-body text-center">
						<i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
						<h4>Orders</h4>
						-------
					</div>
				</div></a>
			</div>
			<div class=" col-md-3">

				<div class=" card">
					<div class=" card-body text-center">
					<a data-toggle="modal" data-target="#exampleModalCenter">
						<i  class="fas fa-plus-square fa-3x text-primary"></i><br>
						<h4>Logout</h4>
						-------</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>