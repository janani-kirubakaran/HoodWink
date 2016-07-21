<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<body>
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
				<a href="singleProductViews">
						<img src="<c:url value="resources/images/dress4.jpg"/>" class="img-rounded" alt="Image" width="400" height="400"></a>
				         <h4>White Dress for Wedding</h4>  
						
					</div>
				
			
			<div class="col-sm-6">
						<img src="<c:url value="resources/images/whiteacc.jpg"/>" class="img-rounded" alt="Image">
						<h4>Accessories for white dresses</h4>
					</div>
					</div>
			

		
		<div class="row">
			<div class="col-sm-6">
				
						<img src="<c:url value="resources/images/accoff.jpg"/>" class="img-rounded" alt="Image">
						<h4>Pink Collections</h4>
					</div>
					
			
			
			<div class="col-sm-6">
				
						<img src="<c:url value="resources/images/cos3.jpg"/>" class="img-rounded" alt="Image">
						<h4>Perfumes</h4>
					</div></div></div>
		
				<div class="footer">
		<div class="container">
			<center>
				<h5>
					<font color="brown">Enjoy Shopping!! Visit us Again!!</font>
				</h5>
			</center>
		</div>
	</div>
	

	</body>
</html>