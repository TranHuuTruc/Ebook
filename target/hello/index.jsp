
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

<% Connection conn = DBConnect.getConn();
out.println(conn);
%>
	<!-- bat dau recent book -->
	<div class="container">
		<h3 class="text-center">Recent book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p>java programing</p>
						<p>balguruswamy</p>
						<p>catergories:new</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> 299</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p>java programing</p>
						<p>balguruswamy</p>
						<p>catergories:new</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> 299</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p>java programing</p>
						<p>balguruswamy</p>
						<p>catergories:new</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> 299</a>
						</div>
					</div>



				</div>



			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p>java programing</p>
						<p>balguruswamy</p>
						<p>catergories:new</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> 299</a>
						</div>
					</div>



				</div>



			</div>
		</div>


	</div>
	<div class="text-center">
		<a href="" class="btn btn-danger btn-sm">view all</a>
	</div>
	<!-- ket thuc recent book-->

	<!-- bat dau old book -->
	<div class="container">
		<h3 class="text-center">Old book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p>java programing</p>
						<p>balguruswamy</p>
						<p>catergories:new</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> 299</a>
						</div>
					</div>



				</div>



			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p>java programing</p>
						<p>balguruswamy</p>
						<p>catergories:new</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> 299</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p>java programing</p>
						<p>balguruswamy</p>
						<p>catergories:new</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> 299</a>
						</div>
					</div>

				</div>

			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin" />
						<p>java programing</p>
						<p>balguruswamy</p>
						<p>catergories:new</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">view detail</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> 299</a>
						</div>
					</div>

				</div>

			</div>
		</div>


	</div>
	<div class="text-center">
		<a href="" class="btn btn-danger btn-sm">view all</a>
	</div>
	<!-- ket thuc old book-->
	<%@include file="All_component/Footer.jsp"%>
</body>
</html>
