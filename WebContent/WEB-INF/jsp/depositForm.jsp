<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<jsp:include page="header.jsp"></jsp:include>
</div>
<div align ="center">
<form id="deposit" action="depositPerform">
<table>
<tr><td>Enter account Number:</td><td> <input type = "number" name="accountNumber" required="required"></td></tr>
<tr><td>Enter amount to be deposited:</td><td><input type="number" name="amount"  required="required"></td></tr>
<tr><td><input type="submit" value="Deposit"></td></tr>
</table>
</form>
</div>
<div>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>