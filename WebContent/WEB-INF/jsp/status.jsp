<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<jstl:if test="${result != null}">
		<h1>${result}</h1>
	</jstl:if>
	<div align="center">
		<jstl:if test="${bankAccount1 != null }">
			<table>
				<tr>
					<th>Account Number</th>
					<th>Customer ID</th>
					<th>Account Type</th>
					<th>Account Balance</th>
					<jstl:if test="${classType1.equals('MMCurrentAccount')}">
						<th>OD Limit</th>
					</jstl:if>
					<jstl:if test="${classType1.equals('MMSavingsAccount')}">
						<th>Salary</th>
					</jstl:if>
				</tr>
				<tr>
					<td>${bankAccount1.accountNumber}</td>
					<td>${bankAccount1.customer.customerId}</td>
					<td>${classType1}</td>
					<td>${bankAccount1.accountBalance}</td>
					<jstl:if test="${classType1.equals('MMCurrentAccount')}">
						<td>${bankAccount1.odLimit}</td>
					</jstl:if>
					<jstl:if test="${classType1.equals('MMSavingsAccount')}">
						<td>${bankAccount1.salaryValue}</td>
					</jstl:if>
			</table>
		</jstl:if>
	</div>
	<div align="center">
		<jstl:if test="${bankAccount2 != null }">
			<table>
				<tr>
					<th>Account Number</th>
					<th>Customer ID</th>
					<th>Account Type</th>
					<th>Account Balance</th>
					<jstl:if test="${classType2.equals('MMCurrentAccount')}">
						<th>OD Limit</th>
					</jstl:if>
					<jstl:if test="${classType2.equals('MMSavingsAccount')}">
						<th>Salary</th>
					</jstl:if>
				</tr>
				<tr>
					<td>${bankAccount2.accountNumber}</td>
					<td>${bankAccount2.customer.customerId}</td>
					<td>${classType2}</td>
					<td>${bankAccount2.accountBalance}</td>
					<jstl:if test="${classType2.equals('MMCurrentAccount')}">
						<td>${bankAccount2.odLimit}</td>
					</jstl:if>
					<jstl:if test="${classType2.equals('MMSavingsAccount')}">
						<td>${bankAccount2.salaryValue}</td>
					</jstl:if>
			</table>
		</jstl:if>
		<jstl:if test="${bankAccount1 == null }">
			<h4>No ACCOUNT Found!</h4>
		</jstl:if>
	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>