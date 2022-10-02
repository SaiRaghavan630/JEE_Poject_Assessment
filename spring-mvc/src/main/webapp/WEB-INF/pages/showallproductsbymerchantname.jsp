<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of Products Under the Merchant Name</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
 crossorigin="anonymous">
</head>
<body>
<form method="post" action="/products/displayproductbymerchantname" class="p-2 w-50 border">
     <div>
		 <label>Merchant Name</label>
		 <input type="text" name="merchantName" id="merchantName" class="form-control"/>
	</div>
	<div class="m-2 text-center">
		<input type="submit" value="Find" class="btn btn-outline-danger w-100">
	</div>
</form>
<br>
<center><h1>List Of Products Under The Merchant</h1></center>
<br>
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
<c:forEach items="${list}" var="each">
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
</body>
</html>


