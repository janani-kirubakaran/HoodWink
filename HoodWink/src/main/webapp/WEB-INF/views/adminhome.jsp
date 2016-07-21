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
<style type="text/css">
.dropdown{
  cursor: pointer;
  }
.dropdown:hover .dropdown-menu {
    display: block;
}

</style>

<title>AdminHome</title>
</head>

<body style="background-image: url(resources/images/background2.jpg); background-size: cover">
	<nav role="navigation" class="navbar navbar-inverse"
		style="background-color:#000000;
     box-shadow:inset 0px 2px 3px 3px #606060">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" data-target="#navbarCollapse"
			data-toggle="collapse" class="navbar-toggle">
			<span class="sr-only"></span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a href="#" class="navbar-brand"
			style="font-family: Brush script MT, cursive; font-size: 30px; font-color: #FFFFFF; text-shadow: 10px 10px 0px #303030;">HoodWink</a>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li class=" active"><a href="adminhome"> Admin Home</a></li>
			<li class="action"><a href="addAdmin">Add Admin</a></li>
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" >AdminOperations<b
					class="caret"></b></a>
				<ul role="menu" class="dropdown-menu"
					style="background-color:#202020; box-shadow: 2px 2px 4px 4px #707070;">
					<li><a href="getAllCategory" style="color:#C0C0C0">View Category</a></li>
					<li><a href="getAllSupplier" style="color:#C0C0C0">View Supplier</a></li>
					<li><a href="getAllProduct" style="color:#C0C0C0">View Products</a></li>
					
				</ul></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
		  	<li><a href="#"><span class="glyphicon glyphicon-user"></span>${name}</a></li>
		
			<li><a href="login.jsp"><span
					class="glyphicon glyphicon-power-off"></span>Logout</a></li>
		</ul>
				<ul class="nav navbar-nav navbar-right">
			<li><a href="home"><span
					class="glyphicon glyphicon-shopping-home"></span>Main Home</a></li>
		</ul>
	</div>
	</nav>
	<div id="getAllCategory">
	<c:if test="${clickedCategory==true}">
	<%@include file="categorylist.jsp" %>
	</c:if>
	</div>
<div id="addAdmin">
	<c:if test="${clickedAddAdmin==true}">
	<%@include file="addAdmin.jsp" %>
	</c:if>
	</div>

	<div id="getAllSupplier">
	<c:if test="${clickedSupplier==true}">
	<%@include file="supplierList.jsp" %>
	</c:if>
	</div>
	<div id="getAllProduct">
	<c:if test="${clickedProduct==true}">
	<%@include file="productList.jsp" %>
	</c:if>
	</div>
	
</body>
</html>