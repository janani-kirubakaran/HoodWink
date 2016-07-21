<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="0; URL=home">
<title>HoodWink</title>
</head>
<!--meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script-->






<body>

	<!-- nav class="navbar navbar-inverse">
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
				<li class="dropdown"><a class="drop-toggle"
					data-toggle="dropdown" href="#">Women's apparel<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Ethnic Wear</a></li>
						<li><a href="#">Western wear</a></li>
					</ul></li>
				<li class="dropdown"><a class="drop-toggle"
					data-toggle="dropdown" href="#">Fashion Accessories<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Wedges</a></li>
						<li><a href="#">Bags</a></li>
					</ul></li>
				<li class="dropdown"><a class="drop-toggle"
					data-toggle="dropdown" href="#">Beautifiers<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Make-over products</a></li>
						<li><a href="#">Perfumes</a></li>
					</ul></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a>

				<li><a href="signin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>

		</div>
	</div>
	</nav>
	<nav class="navbar navbar-primary">
	<div class="container-fluid">
		<div class="row">

			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn">
					<button class="btn btn-default btn-lg" type="button-primary">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</span>

			</div>
			<!-- /input-group -->

		<!--/div>
		<!-- /.row -->
	<!-- /div>
	</nav>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		
		<ol class="carousel-indicators">
			<li data-target="#Mycarousel" data-slide-to="0" class="active"></li>
			<li data-target="#Mycarousel" data-slide-to="1"></li>
			<li data-target="#Mycarousel" data-slide-to="2"></li>

		</ol>

		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value="resources/images/dressban3.jpg"/>" alt="apparel" />
			</div>

			<div class="item">
				<img src="<c:url value="resources/images/accban.jpg"/>" alt="ac" />
			</div>

			<div class="item">
				<img src="<c:url value="resources/images/cosban.jpg"/>" alt="cos" />
			</div>


		</div>

		
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
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
				<div class="panel panel-primary">
					<div class="panel-heading">Hot deals in Women apparel</div>
					<div class="panel-body">
						<img src="<c:url value="resources/images/dressoff.jpg"/>" class="img-rounded" alt="Image"
							width="525" height="300">
					</div>
					<div class="panel-footer">
						<a href="chud.jsp">10-30% discount</a>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">Grab your favourite acesories</div>
					<div class="panel-body">
						<img src="<c:url value="resources/images/accoff.jpg"/>" class="img-rounded" alt="Image"
							width="525" height="300">
					</div>
					<div class="panel-footer">
						<a href="chud.jsp">at 20% offer</a>
					</div>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">Make-over set</div>
					<div class="panel-body">
						<img src="<c:url value="resources/images/cosoff.jpg"/>" class="img-rounded" alt="Image"
							width="525" height="300">
					</div>
					<div class="panel-footer">
						<a href="chud.jsp">Save Rs.1000</a>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="panel panel-primary">
					<div class="panel-heading">Special offer</div>
					<div class="panel-body">
						<img src="<c:url value="resources/images/cos3.jpg"/>" class="img-rounded" alt="Image"
							width="525" height="300">
					</div>
					<div class="panel-footer">
						<a href="chud.jsp">Save Rs.500</a>
					</div>
				</div>
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
	</div-->


</body>
</html>
