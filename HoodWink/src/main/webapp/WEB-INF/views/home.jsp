<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>HoodWink</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
.jumbotron {
	position: relative;
	background: #000 url("resources/images/hoodwinklogo.jpg") center center;
	width: 100%;
	height: 100%;
	background-size: cover;
	margin-bottom: 0;
}
.dropdown{
  cursor: pointer;
  }
.dropdown:hover .dropdown-menu {
    display: block;
}




</style>
<body style="background-image: url(resources/images/blackbackground.jpg); background-size: cover">

	<div class="jumbotron">
		<div class="container" style="height: 200px"></div>
	</div>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand">HoodWink</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp"><span
						class="glyphicon glyphicon-home"></span></a></li>
			
		<c:forEach items="${categoryList}" var="category">
		<li class="dropdown"><a class="drop-toggle"
					data-toggle="dropdown" href="${category.categoryid}">${category.categoryid}</a>
				<ul class="dropdown-menu">
						
					<c:forEach items="${category.products}" var="product">

						<li><a href="<c:url value='product/get/${product.productid}' />">${product.productid}</a></li>

					</c:forEach>

				</ul></li>
		</c:forEach>

	</ul>
	<ul class="nav navbar-nav navbar-right">
<c:if test="${adminname==true}">
<li><a href="adminhome"><span
							class="glyphicon glyphicon-shopping-home"></span>AdminAccess</a>

</c:if>
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span>Cart</a>
							<li><a href="memberShip.obj"><span
							class="glyphicon glyphicon-register"></span> register</a></li>
							
							
					<li><a href="signin"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>




				</ul>
		</div>	
</div>
	</nav>
		

	<div id="home">
		<c:if test="${clickedHome==true}">
			<div class="container-fluid">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<ol class="carousel-indicators">
						<li data-target="#Mycarousel" data-slide-to="0" class="active"></li>
						<li data-target="#Mycarousel" data-slide-to="1"></li>
						<li data-target="#Mycarousel" data-slide-to="2"></li>

					</ol>

					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="<c:url value="resources/images/dressban3.jpg"/>"
								alt="apparel" />
						</div>

						<div class="item">
							<img src="<c:url value="resources/images/accban.jpg"/>" alt="ac" />
						</div>

						<div class="item">
							<img src="<c:url value="resources/images/cosban.jpg"/>" alt="cos" />
						</div>


					</div>


					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>


			<div class="container">
				<center>
					<h1>
						<font face="TIMES NEW ROMAN" color=Red>HoodWink's For All
							Occassion</font>
					</h1>
					<h3>
						<font face="TIMES NEW ROMAN" color=green>TODAY'S DEALS</font>
					</h3>
					<br />
				</center>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<a href="singleProductView"> <img
							src="<c:url value="resources/images/dress4.jpg"/>"
							class="img-rounded" alt="Image" height="400" width="400"></a>
						<h4>White Dress for Wedding</h4>

					</div>


					<div class="col-sm-6">
						<img src="<c:url value="resources/images/whiteacc.jpg"/>"
							class="img-rounded" alt="Image">
						<h4>Accessories for white dresses</h4>
					</div>
				</div>



				<div class="row">
					<div class="col-sm-6">

						<img src="<c:url value="resources/images/cosoff.jpg"/>"
							class="img-rounded" alt="Image" height="400" width="400">
						<h4>Cosmetics for Women</h4>
					</div>



					<div class="col-sm-6">

						<img src="<c:url value="resources/images/cos3.jpg"/>"
							class="img-rounded" alt="Image" height="400" width="400">
						<h4>Perfumes</h4>
					</div>
				</div>
			</div>

			<div class="footer">
				<div class="container">
					<center>
						<h5>
							<font color="brown">Enjoy Shopping!! Visit us Again!!</font>
						</h5>
					</center>
				</div>
			</div>
		</c:if>

	</div>

	<div id="product/get/${product.productid}">
		<c:if test="${clickedProductViews==true}">
			<%@include file="singleProductView.jsp"%>
		</c:if>
	</div>

</body>
</html>

