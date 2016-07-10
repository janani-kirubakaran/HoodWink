<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>
<h4>Add Product</h4>
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
												<td><select name="categoryid"><c:forEach items="${categoryid}" var="category" varStatus="status"><option>${category.id}
				</option></c:forEach></select></td>
												
											</tr>
											<tr>
												<td>Product Supplier:</td>
												<td><select multiple name="supplierid"><c:forEach items="${supplierid}" var="supplier" varStatus="status"><option>${supplier.supplierid}
				</option></c:forEach></select></td>
												
											</tr>
											
											<tr>
												<td><input type="submit" value="Add">
												<td><input type="reset" value="Reset">
											</tr>

										</table>
										</div>
</div></div>
									</form:form>	
</body>
</html>