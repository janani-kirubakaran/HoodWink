<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html ng-app="sApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
  <script src="resources/js/supplierjs.js"></script>
<title>view supplier</title>
</head>
<body ng-controller="supplierCtrl">

	<h4>List of available supplier</h4>
	<div class="input-group">
			<input type="text" class="form-control" ng-model="search">
					</div><br/>
					<br/>
	

	<table align="left" border="1">
		<tr>
	
			<th align="left">Supplier ID</th>
			<th align="left">Name</th>
			<th align="left">address</th>
			<th align="left">email ID</th>
			<th align="left">contact number</th>
			<th>edit</th>
			<th>delete</th>
		</tr>
		<!-- c:forEach items="${supplierList}" var="supplier" varStatus="status"-->
			<tr ng-repeat="supplier in suppliers | filter:search">
				
				<td>{{supplier.supplierid}}</td>
				<td>{{supplier.name}}</td>
				<td>{{supplier.address}}</td>
				<td>{{supplier.emailid}}</td>
				<td>{{supplier.contactnumber}}</td>
				<td align="center"><a href="editSupplier">edit</a></td>
				<td><a href="deleteSupplier/{{supplier.supplierid}}">Delete</a></td>
			</tr>
		
	</table>
<br/>
<br/>
	<a href="admin">go back to admin</a>

</body>
</html>