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
<div>
	<jsp:include page="header.jsp"></jsp:include>
</div>
<div align="center">
<form action="fundTransferPerform">
<table>
<tr><td>Enter sender account :</td><td><input type="number"  name="sender" required="required"></td></tr>
<tr><td>Enter receiver account no:</td><td><input type="number"  name="receiver" required="required"></td></tr>
<tr><td>Enter amount:</td><td><input type="number"  name="amount" required="required"></td></tr>
<tr><td><input type="submit" value="Transfer"></td></tr>
</table>
</form>
</div>
<div>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>