<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
  <title>HoodWink</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="https://code.jquery.com/jquery-2.2.2.min.js" 
     integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI=" 
     crossorigin="anonymous"></script>
     <link 
 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
     
 <script 
     src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" 
     integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" 
     crossorigin="anonymous"></script>
 <link href='https://fonts.googleapis.com/css?family=Ubuntu+Mono' rel='stylesheet' type='text/css'>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<style>
.monospaced { font-family: 'Ubuntu Mono', monospaced ; }

.add-to-cart .btn { border-radius: 0; }

.add-to-cart .btn-qty {
  width: 52px;
  height: 46px;
}
  
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    .h4
    {
    font-color:red;
    }
     .h1
    {
    font-color:red;
    }
    
     .p
    {
    font-color:yellow;
    }
   
   
  </style>
</head>
<body>
	
<div class="container">
  <div class="row">
   <div class="col-md-6">
<div id="product-section">
   
				<img src="<c:url value="resources/images/dress5.jpg"/>" class="img-rounded" alt="Image" width="400" height="400">
				         <h1>${selectedProduct.name}</h1>  
   </div>
 
  </div><!-- end row -->
 

<div class="col-md-6">
 <div class="row">
  <div class="col-md-12">
	 <br/>      
     <h4>${selectedProduct.category.name}<br/>
     ${selectedProduct.supplier.name}</h4>
 </div>
</div><!-- end row-->
<div class="row">
 <div class="col-md-12">
  <p class="description">
  product description
  ${selectedProduct.description}
  </p>
 </div>
</div><!-- end row -->


<div class="row">
 <div class="col-md-12 bottom-rule">
  <h2 class="product-price">Rs.${selectedProduct.price}</h2>
 </div>
</div><!-- end row -->

<br>
<div class="col-md-7">
<form:form action="CartView">
<button class="btn btn-lg btn-brand btn-full-width" type="submit" style="background-color:gold">
   Add to Cart
  </button>
</form:form>
<br/>
<button class="btn btn-lg btn-brand btn-full-width">
   Buy Now
  </button>
</div>
</div><!-- end row -->




<!-- Nav tabs>
<ul class="nav nav-tabs" role="tablist">
 <li role="presentation" class="active">
  <a href="#description"
   aria-controls="description"
   role="tab"
   data-toggle="tab"
  >Description</a>
 </li>
 <li role="presentation">
  <a href="#features"
   aria-controls="features"
   role="tab"
   data-toggle="tab"
  >Features</a>
 </li>
 <li role="presentation">
  <a href="#notes"
   aria-controls="notes"
   role="tab"
   data-toggle="tab"
   >Notes</a>
 </li>
 <li role="presentation">
  <a href="#reviews"
   aria-controls="reviews"
   role="tab"
   data-toggle="tab"
  >Reviews</a>
 </li>
</ul>


 
<!-- Tab panes >
<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="description">
 ...
</div>
 <div role="tabpanel" class="tab-pane top-10" id="features">
  ...
 </div>
 <div role="tabpanel" class="tab-pane" id="notes">
  ...
 </div>
 <div role="tabpanel" class="tab-pane" id="reviews">
  ...
 </div>
</div>

</div>
</div>
</div><!-- end container -->

</div>
</div>



</body>
</html>


