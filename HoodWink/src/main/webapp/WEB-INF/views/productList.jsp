
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>

<title>Product List</title>
</head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #101010;
}

th {
	background-color: #101010;
	color: red;
}
</style>


<body>
	<h4>List of available product</h4>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">

				<div class="col-sm-5">
					<div class="panel panel-default"
						style="background-color: #484848; width: 300px; color: #000000">
						<div class="panel-heading"
							style="background-color: #101010; color: #E0E0E0">Add
							category</div>
						<div class="panel-body">

							<c:url var="addAction" value="/product/add"></c:url>
							<form:form action="${addAction}" commandName="product">
								<table>
									<tr>
										<td><form:label path="productid">
												<spring:message text="productid" />
											</form:label></td>
										<c:choose>
											<c:when test="${!empty product.productid}">
												<td><form:input path="productid" disabled="true"
														readonly="true" /></td>
											</c:when>

											<c:otherwise>
												<td><form:input path="productid" pattern=".{2,10}"
														required="true"
														title="id should contains 2 to 10 characters" /></td>
											</c:otherwise>
										</c:choose>
									<tr>
										<form:input path="productid" hidden="true" />
										<td><form:label path="name">
												<spring:message text="name" />
											</form:label></td>
										<td><form:input path="name" required="true" /></td>
									</tr>


									<tr>
										<td><form:label path="price">
												<spring:message text="Price" />
											</form:label></td>
										<td><form:input path="price" required="true" /></td>
									</tr>

									<tr>
										<td><form:label path="description">
												<spring:message text="Description" />
											</form:label></td>
										<td><form:input path="description" required="true" /></td>
									</tr>

									<tr>
										<td><form:label path="supplier">
												<spring:message text="supplier" />
											</form:label></td>
										<td><form:select path="supplier.supplierid"
												items="${supplierList}" itemValue="supplierid"
												itemLabel="supplierid"></form:select></td>
									</tr>
									<tr>
										<td><form:label path="category">
												<spring:message text="category" />
											</form:label></td>
										<td><form:select path="category.categoryid"
												items="${categoryList}" itemValue="categoryid"
												itemLabel="categoryid" /></td>
									</tr>


									<tr>
										<td colspan="2"><c:if test="${!empty product.name}">
												<input type="submit"
													value="<spring:message text="Edit Product"/>" />
											</c:if> <c:if test="${empty product.name}">
												<input type="submit"
													value="<spring:message text="Add Product"/>" />
											</c:if></td>
									</tr>

								</table>
							</form:form>
						</div>
					</div>
				</div>
				<br>

			</div>

			<div class="col-sm-7">
				<div class="panel panel-default"
					style="background-color: #303030; color: #E0E0E0">
					<div class="panel-heading"
						style="background-color: #F0F0F0; color: #E0E0E0">Product List
						List</div>
					<div class="panel-body">


						<table align="left" border="1">
							<tr>

								<th align="left">product ID</th>
								<th align="left">Name</th>
								<th align="left">Description</th>
								<th align="left">Price</th>
								<th align="left">CategoryID</th>
								<th align="left">SuppierID</th>
								<th>edit</th>
								<th>delete</th>
							</tr>

							<c:forEach items="${productList}" var="product">
								<tr>
									<td>${product.productid}</td>
									<td>${product.name}</td>
									<td>${product.description}</td>
									<td>${product.price}</td>
									<td>${product.category.categoryid}</td>
									<td>${product.supplier.supplierid}</td>
									<td><a
										href="<c:url value='editProduct/${product.productid}' />"><span
											class="glyphicon glyphicon-edit"></span></a></td>
									<td><form:form action="deleteProduct">
											<input type="submit" name="delete"
												value="${product.productid}">
										</form:form></td>



								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>