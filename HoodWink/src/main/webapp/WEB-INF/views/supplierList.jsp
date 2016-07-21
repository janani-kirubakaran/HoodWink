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

<title>view supplier</title>
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
	background-color: #f2f2f2
}

th {
	background-color: #101010;
	color: white;
}
</style>
<body>

	<h1>Add a Supplier</h1>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">

				<div class="col-sm-5">
					<div class="panel panel-default"
						style="background-color: #484848; color: #000000">
						<div class="panel-heading"
							style="background-color: #101010; color: #E0E0E0">Add
							category</div>
						<div class="panel-body">


							<c:url var="addAction" value="/supplier/add"></c:url>

							<form:form action="${addAction}" commandName="supplier">
								<table>
									<tr>
										<td><form:label path="supplierid">
												<spring:message text="supplierid" />
											</form:label></td>
										<c:choose>
											<c:when test="${!empty supplier.supplierid}">
												<td><form:input path="supplierid" disabled="true"
														readonly="true" /></td>
											</c:when>

											<c:otherwise>
												<td><form:input path="supplierid" pattern=".{2,10}"
														required="true"
														title="id should contains 2 to 10 characters" /></td>
											</c:otherwise>
										</c:choose>
									<tr>
										<form:input path="supplierid" hidden="true" />
										<td><form:label path="name">
												<spring:message text="name" />
											</form:label></td>
										<td><form:input path="name" required="true" /></td>
									</tr>
									<tr>
										<td><form:label path="address">
												<spring:message text="address" />
											</form:label></td>
										<td><form:input path="address" required="true" /></td>
									</tr>
									<tr>
										<td><form:label path="emailid">
												<spring:message text="emailid" />
											</form:label></td>
										<td><form:input path="emailid" required="true" /></td>
									</tr>
									<tr>
										<td><form:label path="contactnumber">
												<spring:message text="contactnumber" />
											</form:label></td>
										<td><form:input path="contactnumber" required="true" /></td>
									</tr>

									<tr>
										<td colspan="2"><c:if test="${!empty supplier.name}">
												<input type="submit"
													value="<spring:message text="Edit Supplier"/>" />
											</c:if> <c:if test="${empty supplier.name}">
												<input type="submit"
													value="<spring:message text="Add Supplier"/>" />
											</c:if></td>
									</tr>
								</table>
							</form:form>
						</div>
					</div>
				</div>
				<br>
				<div class="col-sm-7">
					<div class="panel panel-default"
						style="background-color: #505050; color: #404040">
						<div class="panel-heading"
							style="background-color: #101010; color: #E0E0E0">Category
							List</div>
						<div class="panel-body">

							<div ng-app="sApp">
								<div ng-controller="supplierCtrl">

									<h4>List of available supplier</h4>
									<div class="input-group">
										<input type="text" class="form-control" ng-model="search">
									</div>
									<br /> <br />


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
											<td><a
												href="<c:url value='edit/{{supplier.supplierid}}' />"><span
													class="glyphicon glyphicon-edit"></span></a></td>
											<td><a
												href="<c:url value='remove/{{supplier.supplierid}}' />"><span
													class="glyphicon glyphicon-trash"></span></a></td>

										</tr>

									</table>
								</div>
							</div>
							<br />

						</div>
					</div>
				</div>
				</div>
				</div>
				</div>
				
				<script src="resources/js/supplierjs.js"></script>
</body>
</html>