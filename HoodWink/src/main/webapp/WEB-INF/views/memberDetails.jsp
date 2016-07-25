<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="content">
		<fieldset>
			<legend>Register Here</legend>
			<a href="${flowExecutionUrl}&_eventId_home">Home</a>
			<form:form modelAttribute="user">
				<br />
				

				<form:label path="username">User Name:</form:label>
				<form:input path="username" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="password">Password:</form:label>
				<form:input type="password" path="password" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="email">Email ID:</form:label>
				<form:input path="email" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="contact_number">Mobile #:</form:label>
				<form:input path="contact_number" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('contact_number')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>


				<br />
							<br />
					<input name="_eventId_submit" type="submit" value="Submit" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>
</html>