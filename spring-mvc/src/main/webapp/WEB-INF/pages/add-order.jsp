<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Order</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
 crossorigin="anonymous">
</head>
<body class="d-flex flex-column align-items-center bg-secondary">
<h3 class="text-center mt-4">ADD ORDER</h3>
<form:form modelAttribute="command" method="post" action="/orders/add-order" class="p-2 w-50 bg-dark text-white">
		<div>
		    <label>Sno</label>
			<form:input path="id" id="id"  class="form-control" type="number"/>
		</div>		
		<div>
		    <label>Order ID</label>
			<form:input path="orderId" id="orderId" class="form-control" type="number"/>
		</div>
		<div>
		    <label>Customer Name</label>
			<form:input path="orderPerson" id="orderPerson" class="form-control"/>
		</div>
		<div>
		    <label>Product Name</label>
		    <form:select path="productName" class="form-control" >
		          <form:option value="0" label="select product Name"/>
		          <c:forEach items="${list}" var="each">
		          <form:option value="${each.productName}" label="${each.productName}" />  
		          </c:forEach>
		    </form:select>
		</div>
		<div>
		    <label>Quantity</label>
			<form:input path="quantity" id="quantity" class="form-control"/>
		</div>
		<div class="m-2 text-center">
			<input type="submit" value="Add" class="btn btn-info">
		</div>
</form:form>
</body>
</html>