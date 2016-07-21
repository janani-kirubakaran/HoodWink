<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product View</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	

		
	<div class="container">

		<div class="row">
			<div class="row">

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/320x150" alt="">
						<div class="caption">
							<h4 class="pull-right">${selectedProduct.price}</h4>
							<h4>
								<a href="singleProductView">${selectedProduct.name} }</a>
							</h4>
							<form:form>
								<button class="btn btn-lg btn-brand btn-full-width"
									type="submit" style="background-color: gold">
									<a href="CartView">Add to Cart</a></button>
							</form:form>
						</div>
						
					</div>
				</div>

				<!--div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/320x150" alt="">
						<div class="caption">
							<h4 class="pull-right">$64.99</h4>
							<h4>
								<a href="#">Second Product</a>
							</h4>
							<p>This is a short description. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</div>
						<div class="ratings">
							<p class="pull-right">12 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/320x150" alt="">
						<div class="caption">
							<h4 class="pull-right">$74.99</h4>
							<h4>
								<a href="#">Third Product</a>
							</h4>
							<p>This is a short description. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</div>
						<div class="ratings">
							<p class="pull-right">31 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/320x150" alt="">
						<div class="caption">
							<h4 class="pull-right">$84.99</h4>
							<h4>
								<a href="#">Fourth Product</a>
							</h4>
							<p>This is a short description. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</div>
						<div class="ratings">
							<p class="pull-right">6 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="http://placehold.it/320x150" alt="">
						<div class="caption">
							<h4 class="pull-right">$94.99</h4>
							<h4>
								<a href="#">Fifth Product</a>
							</h4>
							<p>This is a short description. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</div>
						<div class="ratings">
							<p class="pull-right">18 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div-->


			</div>

		</div>

	</div>


</body>
</html>