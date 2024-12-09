<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> user home</title>
</head>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<body>

<c:if test ="${not empty userobj }">
<h2>Name:${userobj.name }</h2> 
<h2>user id:${userobj.id }</h2> 
<h2>Name:${userobj.email }</h2> 
</c:if>
</body>
</html>