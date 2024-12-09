<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: login</title>
<%@include file="All_component/Allcss.jsp"%>
<%@page isELIgnored="false"%>

</head>
<body>
	<%@include file="All_component/Navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Login Page</h4>
						<c:if test="${not empty userobj }" var="succMsg" scope="session">
							<p class="text-center text-success">${userobj }</p>
							<c:remove var="userobj" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg }" var="failedMsg"
							scope="session">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<br>
						<form action="login" method="post">

							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Email
									address</label> <input type="email" name="email" class="form-control"
									id="exampleInputPassword1" aria-describedby="emailHelp"
									placeholder="Email address" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">
									Password</label> <input name="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password"
									required="required" type="password">
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div>
							<button type="submit" class="btn btn-primary">Login</button>
							<br> <a href="Register.jsp"> Create Acount</a>
						</form>
					</div>

				</div>

			</div>
		</div>
	</div>


</body>
<%@include file="All_component/Footer.jsp"%>
</html>