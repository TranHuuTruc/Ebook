<%@page import="com.entity.USER"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All new books</title>
<%@include file="All_component/Allcss.jsp"%>
<%@include file="All_component/Navbar.jsp"%>
<style type="text/css">
/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */
</style>
</head>
<body>
	<c:if test="${not empty addCart }">
		<div id="toast">${addCart }</div>
		<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $('#toast').removeClass("display");
		    },2000)
		}	
</script>
		<c:remove var="addCart" scope="session" />
	</c:if>

	<div class="container">
		<h3 class="text-center">New Books</h3>
		<div class="row">
			<%
			USER u = (USER) session.getAttribute("userobj");
			%>
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
							<a href="" class="btn btn-success btn-sm ml-1">view detail</a> <a
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