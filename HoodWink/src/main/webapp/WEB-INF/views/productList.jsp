<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
</head>
<body>
<h4>List of available product</h4>

	<table align="left" border="1">
		<tr>
			<th align="left">S.No</th>
			<th align="left">product ID</th>
			<th align="left">Name</th>
			<th align="left">Description</th>
			<th align="left">Price</th>
			<th align="left">CategoryID</th>
			<th align="left">SuppierID</th>
			<th>edit</th>
			<th>delete</th>
		</tr>
		<c:forEach items="${productList}" var="product" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td>${product.price}</td>
				<td>${product.categoryid}</td>
				<td>${product.supplierid}</td>
				
				
				<td align="center"><a href="editProduct">edit</a></td>
				<td><a href="deleteProduct/${product.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>