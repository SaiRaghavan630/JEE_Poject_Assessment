<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Orders Under The Order Person</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
 crossorigin="anonymous">
</head>
<body>
<form method="post" action="/orders/show-orders-by-order-person" class="p-2 w-50 border">
     <div>
		 <label>Order Person</label>
		 <input type="text" name="orderPerson" id="orderPerson" class="form-control"/>
	</div>
	<div class="m-2 text-center">
		<input type="submit" value="Find" class="btn btn-outline-success w-100">
	</div>
	
</form>
<br>
<center>
	<h1 >List Of Orders Under The Order Person</h1></center>
	<br>
<table class="table table-striped ">
    <thead>
        <tr>
            <th>SNO</th>
            <th>Order Id</th>
            <th>Order Person</th>
            <th>Product Name</th>
            <th>Quantity</th>
        </tr>
    </thead>
<tbody>
<c:forEach items="${list}" var="each">
<tr>
        <td>${each.id}</td>
        <td>${each.orderId}</td>
        <td>${each.orderPerson}</td>
        <td>${each.productName}</td>
        <td>${each.quantity}</td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>