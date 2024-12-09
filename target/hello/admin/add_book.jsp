<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add Book</title>
<%@include file="Navbar.jsp"%>
<%@include file="Allcss.jsp"%>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>
						<c:if test="${empty succMsg } " var="succMsg" scope="session">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>



						<br>
						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputPassword1">Book name* </label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									aria-describedby="emailHelp" name="bname" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Author Name* </label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									aria-describedby="emailHelp" name="author" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Price* </label> <input
									type="number" class="form-control" id="exampleInputPassword1"
									name="price" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Book categories* </label> <select
									type="text" class="form-control" id="inputState"
									name="categories" required="required">
									<option selected>--select--</option>

									<option value="New">New Book</option>
									<option value="Old">Old Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Book Status* </label> <select
									type="text" class="form-control" id="inputState" name="status"
									required="required">
									<option selected>--select--</option>

									<option value="Active">Action</option>

									<option value="Active">Inactive</option>

								</select>
							</div>
							<label for="exampleFormControlFile1">Upload Photo </label> <input
								type="file" class="form-control-file" id="exampleInputPassword1"
								name="bimg">

							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
	</div>
</body>
</html>