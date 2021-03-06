<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Category Page</title>
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

<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: red;
}

th {
	background-color: #101010;
	color: red;
}
</style>

</head>
<body>
	<h1>AddOrUpdate a Category</h1>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">

				<div class="col-sm-5">
					<div class="panel panel-default"
						style="background-color: #484848; width: 300px; color: #000000">
						<div class="panel-heading"
							style="background-color: #101010; color: #E0E0E0">Add
							category</div>
						<div class="panel-body">


							<c:url var="addAction" value="/category/add"></c:url>

							<form:form action="${addAction}" commandName="category">
								<table>
									<tr>
										<td><form:label path="categoryid">
												<spring:message text="categoryid" />
											</form:label></td>
										<c:choose>
											<c:when test="${!empty category.categoryid}">
												<td><form:input path="categoryid" disabled="true"
														readonly="true" /></td>
											</c:when>

											<c:otherwise>
												<td><form:input path="categoryid" pattern=".{2,10}"
														required="true"
														title="id should contains 2 to 10 characters" /></td>
											</c:otherwise>
										</c:choose>
									<tr>
										<form:input path="categoryid" hidden="true" />
										<td><form:label path="name">
												<spring:message text="name" />
											</form:label></td>
										<td><form:input path="name" required="true" /></td>
									</tr>
									<tr>
										<td><form:label path="description">
												<spring:message text="description" />
											</form:label></td>
										<td><form:input path="description" required="true" /></td>
									</tr>
									<tr>
										<td colspan="2"><c:if test="${!empty category.name}">
												<input type="submit"
													value="<spring:message text="editCategory"/>" />
											</c:if> <c:if test="${empty category.name}">
												<input type="submit"
													value="<spring:message text="Add category"/>" />
											</c:if></td>
									</tr>

								</table>
							</form:form>

						</div>
					</div>
				</div>
				

							</div>
		</div>
	</div>
	
	<script src="resources/js/categoryjs.js"></script>
	
				<div class="col-sm-7">
					<div class="panel panel-default"
						style="background-color: #303030; color: #E0E0E0">
						<div class="panel-heading"
							style="background-color: #101010; color: #E0E0E0">Category
							List</div>
						<div class="panel-body">
						<table align="left" border="1">
										<tr>

											<th align="left">Id</th>
											<th align="left">Name</th>
											<th align="left">Description</th>
											<th>edit</th>
											<th>delete</th>
										</tr>
										<c:forEach items="${categoryList}" var="category">
										<tr>
											<td>${category.categoryid}</td>
											<td>${category.name}</td>
											<td>${category.description}</td>
											<td align="center"><a
												href="editCategory/${category.categoryid}"><span class="glyphicon glyphicon-edit"></span></a></td>
											<td align="center"><form:form action="deleteCategory"><input type="submit" name="delete" value="${category.categoryid}"></form:form></td>
	
										</tr>
</c:forEach>
									</table>
						</div></div></div>
	
	
</body>
</html>