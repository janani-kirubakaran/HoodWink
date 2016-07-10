<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view supplier</title>
</head>
<body>

	<h4>List of available supplier</h4>

	<table align="left" border="1">
		<tr>
			<th align="left">S.No</th>
			<th align="left">Supplier ID</th>
			<th align="left">Name</th>
			<th align="left">address</th>
			<th align="left">email ID</th>
			<th align="left">contact number</th>
			<th>edit</th>
			<th>delete</th>
		</tr>
		<c:forEach items="${supplierList}" var="supplier" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${supplier.supplierid}</td>
				<td>${supplier.name}</td>
				<td>${supplier.address}</td>
				<td>${supplier.emailid}</td>
				<td>${supplier.contactnumber}</td>
				<td align="center"><a href="editSupplier">edit</a></td>
				<td><a href="deleteSupplier/${supplier.supplierid}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>