<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Products with Inventory>0</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
 crossorigin="anonymous">
</head>
<body>
<center>
<h1>All details of Products With Inventory>0 </h1></center>
<table class="table table-striped ">
    <thead>
        <tr>
            <th>productId</th>
            <th>merchantId</th>
            <th>merchantName</th>
            <th>productCategories</th>
            <th>productName</th>
            <th>productPrice</th>
            <th>productInventory</th>
        </tr>
    </thead>
<tbody>
<c:forEach items="${availableProducts}" var="each">
<tr>
        <td>${each.productId}</td>
         <td>${each.merchantId}</td>
        <td>${each.merchantName}</td>
        <td>${each.productCategories}</td>
        <td>${each.productName}</td>
        <td>${each.productPrice}</td>
        <td>${each.productInventory}</td>
</tr>
</c:forEach>
    
</tbody>
</table>
</body>
</html>