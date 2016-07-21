<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<title>HoodWink Admin</title>
</head>
<body>
	<form:form id="add-form" action="adminregister" method="post">
		<div class="form-group">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<input type="text" name="adminname" id="adminname" tabindex="1"
						class="form-control" placeholder="adminname" value=""> <input
						type="password" name="password" id="password" tabindex="2"
						class="form-control" placeholder="Password"> <input
						type="text" name="contactnumber" id="contactnumber" tabindex="3"
						class="form-control" placeholder="Contact number"> <input
						type="submit" name="register-submit" id="register-submit"
						tabindex="3" class="form-control btn btn-register"
						value="admin login">
				</div>
			</div>
		</div>


	</form:form>
</body>
</html>