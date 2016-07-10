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
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
	

<title>HoodWink Admin</title>
</head>
<style>
.panel-login {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
}

.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align: center;
}

.panel-login>.panel-heading a {
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login>.panel-heading a.active {
	color: #029f5b;
	font-size: 18px;
}

.panel-login input[type="text"], .panel-login input[type="email"],
	.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login input:hover, .panel-login input:focus {
	outline: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}

.btn-login {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}

.btn-login:hover, .btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}

.forgot-password {
	text-decoration: underline;
	color: #888;
}

.forgot-password:hover, .forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-register {
	background-color: #1CB94E;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #1CB94A;
}

.btn-register:hover, .btn-register:focus {
	color: #fff;
	background-color: #1CA347;
	border-color: #1CA347;
}

.leftNav {
	width: 20%;
	height: 100%;
	float: left;
}

.topPanel {
	width: 60%;
	height: 100%;
	float: center;
}

.bottomPanel {
	width: 80%;
	height: 50%;
	float: right;
}

html, body {
	height: 100%;
	overflow: hidden;
}

.panel-body {
	height: 700px;
	width: 550px;
}
</style>
<script>
	$(function() {

		$('#admin-home-link').click(function(e) {
			$("#admin-home").delay(100).fadeIn(100);
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#category-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#add-form-link').click(function(e) {
			$("#add-form").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#category-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#category-link').click(function(e) {
			$("#category-form").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
     		$(this).addClass('active');
			e.preventDefault();
		});
		$('#supplier-link').click(function(e) {
			$("#supplier-form").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#caetgory-link').removeClass('active');
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
     		$(this).addClass('active');
			e.preventDefault();
		});

	});
</script>

<body ng-app="myApp">
	<div class="leftNav">
		<nav class="navbar navbar-inverse">

		<div class="container">
			<div class="leftNav">
				<div class="container-fluid">
					<ul class="nav nav-pills nav-stacked ">

						<li>
							<div class="collapse navbar-collapse" id="myNavbar"></div>
						<li class="active"><a href="#" id="admin-home-link"><span
								class="glyphicon glyphicon-home"></span> Admin Home</a></li>
						<li><a href="#" id="add-form-link">Add admin</a></li>
						<li><a href="#" id="category-link">Add categories</a></li>
						<li><a href="#" id="supplier-link">Add Supplier</a></li>
						<li><a href="getcs" id="product-link">Add product</a></li>
						<li><a href="getAllCategories">View categories</a></li>
					
						<li><a href="getAllSupplier">View supplier</a></li>
						<li><a href="getAllProduct">View Product</a></li>
						
					</ul>
				</div>
			</div>
		</div>
		</nav>
	</div>
	

	<div class="topPanel">
		<div class="container">
         <div class="well">
         	<div class="row">
	<div id="admin-home">							
	<h1>Welcome Admin ${name}</h1>
<h4>Admin can perform Create,Add,Delete,Edit- Category,Supplier,Product</h4>
<h5>only adin can other admin</h5></div>
<form:form id="add-form"  action="adminregister" method="post">
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
						
									<form:form id="category-form" action="addCategory" method="post">
									<div class="form-group">
											<div class="row">
												<div class="col-sm-6 col-sm-offset-3">
									
										<table>
											<tr>
												<td>Category ID:</td>
												<td><input type="text" name="id"></td>
											</tr>
											<tr>
												<td>Category Name:</td>
												<td><input type="text" name="name"></td>
											</tr>
											<tr>
												<td>Category Description:</td>
												<td><input type="text" name="description"></td>
											</tr>

											<tr>
												<td><input type="submit" value="Add">
												<td><input type="reset" value="Reset">
											</tr>

										</table>
										</div>
</div></div>
									</form:form>			
								<form:form id="supplier-form" action="addSupplier" method="post">
									<div class="form-group">
											<div class="row">
												<div class="col-sm-6 col-sm-offset-3">
									
										<table>
											<tr>
												<td>Supplier ID:</td>
												<td><input type="text" name="supplierid"></td>
											</tr>
											<tr>
												<td>Supplier name:</td>
												<td><input type="text" name="name"></td>
											</tr>
											<tr>
												<td>Supplier Address :</td>
												<td><input type="text" name="address"></td>
											</tr>
											<tr>
												<td>Supplier MailID :</td>
												<td><input type="text" name="emailid"></td>
											</tr>
											<tr>
												<td>Supplier contact number:</td>
												<td><input type="text" name="contactnumber"></td>
											</tr>
											<tr>
												<td><input type="submit" value="Add">
												<td><input type="reset" value="Reset">
											</tr>

										</table>
										</div>
</div></div>
									</form:form>			
								
                                   	<form:form id="product-form" action="addProduct" method="post">
									<div class="form-group">
											<div class="row">
												<div class="col-sm-6 col-sm-offset-3">
									
										<table>
											<tr>
												<td>Product ID:</td>
												<td><input type="text" name="id"></td>
											</tr>
											<tr>
												<td>Product name:</td>
												<td><input type="text" name="name"></td>
											</tr>
											<tr>
												<td>Product Description:</td>
												<td><input type="text" name="description"></td>
											</tr>
											<tr>
												<td>Product Price :</td>
												<td><input type="text" name="price"></td>
											</tr>
											<tr>
												<td>Product Category:</td>
												<td><select><option value="categoryid"><c:forEach items="${productList}" var="product" varStatus="status">${product.categoryid}
				</c:forEach></option></select></td>
												
											</tr>
											<tr>
												<td>Product Supplier:</td>
												<td><select multiple><option value="supplierid"><c:forEach items="${productList}" var="product" varStatus="status">${product.supplierid}
				</c:forEach></option></select></td>
												
											</tr>
											
											<tr>
												<td><input type="submit" value="Add">
												<td><input type="reset" value="Reset">
											</tr>

										</table>
										</div>
</div></div>
									</form:form>			
								
                                   
             </div>
             </div>
             </div>
             </div>
             	<div class="row">
			<div ng-view></div>
			<script>
			var app = angular.module("myApp", ["ngRoute"]);
			app.config(function($routeProvider) {
			    $routeProvider
			    .when("getAllCategories", {
			        templateUrl : "views/categorylist.jsp"
			    })
			    .when("getAllSupplier", {
			        templateUrl : "views/supplierList.jsp"
			    })
			   .when("getAllProduct", {
			        templateUrl : "views/productList.jsp"
			    })
			    //.when("adminregister", {
			       // templateUrl : "views/adminRegister.jsp"
			   // })*/

			   	});
			</script>
                     </div>       







</body>
</html>