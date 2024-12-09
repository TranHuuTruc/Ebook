<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
 <%@page isELIgnored="false" %> 
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: register</title>
<%@include file="All_component/Allcss.jsp"%>

</head>
<body>
	<%@include file="All_component/Navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registration Page</h4>
						<c:if test="${empty succMsg } " var="succMsg" scope="session">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${empty failedMsg } " var="failedMsg" scope="session">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<br>
						<form action="register" method="post">
							<div class="form-group">

								<label for="exampleInputEmail1" class="form-label">Enter
									fullname </label> <input type="text" class="form-control"
									id="exampleInputEmail1" placeholder="Enter fullname"
									name="fname">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputPassword1" aria-describedby="emailHelp"
									placeholder="Email address" required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Phone
									no</label> <input type="number" class="form-control"
									id="exampleInputPassword1" placeholder="phone no"
									required="required" name="phno">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Email
									password</label> <input type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password"
									required="required" name="password">
							</div>
							<div class=" form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1" >Agree and Term
									Conditions</label>
							</div>
							<button  type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>


				</div>

			</div>
		</div>
	</div>

	<%@include file="All_component/Footer.jsp"%>

</body>
</html>