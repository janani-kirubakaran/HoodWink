<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Responsive Shopping Cart</title>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="resources/js/Cart.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	
</head>
<link rel="stylesheet" href="resources/css/normalize.css">
<link rel="stylesheet" href="resources/css/style.css">
<script src="resources/js/cartjs.js"></script>
<body>


	<h1>HoodWink</h1>


	<div class="shopping-cart">


		<div class="column-labels">

			<label class="product-image">Image</label> <label
				class="product-details">Product</label> <label class="product-price">Price</label>

			<label class="product-quantity">Quantity</label> <label
				class="product-removal">Remove</label> <label
				class="product-line-price">Total</label>

		</div>

		<div class="product">

			<div class="product-image">

		<img src="<c:url value="resources/images/dress4.jpg"/>" class="img-rounded" alt="Image" width="100" height="100">
			</div>

			<div class="product-details">

				<div class="product-title">title</div>

				<p class="product-description"></p>

			</div>

			<div class="product-price">1299.00</div>

			<div class="product-quantity">

				<input type="number" value="1" min="1">

			</div>

			<div class="product-removal">

				<button class="remove-product">Remove</button>

			</div>

			<div class="product-line-price">1299.00</div>

		</div>


		<div class="product">

			<div class="product-image">

				<img src="<c:url value="resources/images/dress4.jpg"/>" class="img-rounded" alt="Image" width="100" height="100">

			</div>

			<div class="product-details">

				<div class="product-title">title</div>

				<p class="product-description"></p>

			</div>

			<div class="product-price">2499.00</div>

			<div class="product-quantity">

				<input type="number" value="1" min="1">

			</div>
			<div class="product-removal">

				<button class="remove-product">Remove</button>

			</div>

			<div class="product-line-price">2499.00</div>

		</div>


		<div class="totals">

			<div class="totals-item">

				<label>Subtotal</label>

				<div class="totals-value" id="cart-subtotal">3798.00</div>

			</div>

			<div class="totals-item">

				<label>Tax (5%)</label>

				<div class="totals-value" id="cart-tax">302.60</div>

			</div>

			<div class="totals-item">

				<label>Shipping</label>

				<div class="totals-value" id="cart-shipping">150.00</div>

			</div>

			<div class="totals-item totals-item-total">

				<label>Grand Total</label>

				<div class="totals-value" id="cart-total">4250.60</div>

			</div>

		</div>


		<button class="checkout">Checkout</button>

	</div>

</body>

</html>


