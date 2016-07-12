<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update supplier</title>
</head>
<body>
<form:form action="updateSupplier" method="post" >
      <table>
       <tr>
       <td>Supplier ID:</td>
       <td><input type="text" name="supplierid" value="${supplier.supplierid}"/></td>
       </tr>
       
       <tr>
       <td>supplier Name:</td>
       <td><input type="text" name="name" value="${supplier.name}"/></td>
       </tr>
       <tr>
       <td>Supplier Address</td>
       <td><input type="text" name="address" value="${supplier.address}"/></td>
       </tr>
       <tr>
       <td>Supplier email ID</td>
       <td><input type="text" name="emailid" value="${supplier.emailid}"/></td>
       </tr>
       <tr>
       <td>Supplier Contact number</td>
       <td><input type="text" name="contactnumber" value="${supplier.contactnumber}"/></td>
       </tr>
       <tr><td><input type="submit" name="edit" value="edit"/></td></tr>
       
          </table> 
  </form:form>
<br/>
<br/>
	<a href="admin">go back to admin</a>

</body>
</html>