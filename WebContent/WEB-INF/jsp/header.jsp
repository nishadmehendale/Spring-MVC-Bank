<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>body {
	background-color: #7fffda;
}</style>
</head>
<body>
<div align="center">
<h1>Money Money Bank</h1>
<h3>Your Partner to Success!</h3> 
</div>
<div>
<a href="">Home</a>
|Welcome ${sessionScope.user}!
<jstl:if test='${sessionScope.user != null }'>
<p align="right"><a href="logout.app">LogOut</a></p>
</jstl:if>
</div>
</body>
</html>