<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html ng-app="myApp">	
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
  
		<script src="resources/js/categoryjs.js"></script>
<title>Category List</title>
</head>

<body ng-controller="categoryCtrl">
	${message}
	<h4>List of available categories</h4>

		<div class="input-group">
			<input type="text" class="form-control" ng-model="search">
					</div><br/>
					<br/>
					
		<table align="left" border="1">
		<tr>
		
			<th align="left">Id</th>
			<th align="left">Name</th>
			<th align="left">Description</th>
		    <th>edit</th>
			<th>delete</th>
		</tr>
		<tr ng-repeat="category in categories | filter:search">
		<td>{{category.id}}</td>
		<td>{{category.name}}</td>
		<td>{{category.description}}</td>
		<td align="center"><a href="editCategory">{{category.id}}</a></td><td> <a href="deleteCategory/{{category.id}}">Delete</a></td>
		</tr>
		
</table>
<br/>
<br/>
	<a href="admin">go back to admin</a>
	</body>
</html>