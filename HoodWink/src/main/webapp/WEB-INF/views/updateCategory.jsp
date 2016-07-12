<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE CATEGORY</title>
</head>
<body>


<form:form action="updateCategories" method="post" >
      <table>
       <tr>
       <td>Category ID:</td>
       <td><input type="text" name="id" value="${category.id}"/></td>
       </tr>
       
       <tr>
       <td>Category Name:</td>
       <td><input type="text" name="name" value="${category.name}"/></td>
       </tr>
       <tr>
       <td>Category Description:</td>
       <td><input type="text" name="description" value="${category.description}"/></td>
       </tr>
       <tr><td><input type="submit" name="edit" value="edit"/></td></tr>
       
          </table> 
  </form:form>
  <br/>
<br/>
	<a href="admin">go back to admin</a>
  
</body>
</html>