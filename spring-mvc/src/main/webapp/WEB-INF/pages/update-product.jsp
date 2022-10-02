<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Products</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
 crossorigin="anonymous">
 <style>
*{
margin:0 auto;
}
</style>
</head>
<body class="bg-secondary text-white">
<h3 class="text-center mt-4">UPDATE PRODUCTS</h3>
<form:form modelAttribute="command" method="post" action="/products/update-product" class="p-2 w-50 bg-dark text-white">
		<div>
		    <label>Product ID</label>
			<form:input path="productId" id="productId"  class="form-control" required="required"/>
		</div>		
		<div>
		    <label>Merchant Name</label>
			<form:input path="merchantName" id="merchantName" class="form-control" required="required"/>
		</div>
		<div>
		    <label>Merchant ID</label>
			<form:input path="merchantId" id="merchantId" class="form-control" required="required"/>
		</div>
		<div>
		    <label>Product Categories</label>
		    <form:input path="productCategories" id="productCategories" class="form-control" required="required"/>
		</div>
		<div>
		    <label>Product Name</label>
			<form:input path="productName" id="productName" class="form-control" required="required"/>
		</div>
		<div>
		    <label>Product Price</label>
			<form:input path="productPrice" id="productPrice" class="form-control" required="required"/>
		</div>
		<div>
		    <label>Product Inventory</label>
			<form:input path="productInventory" id="productInventory" class="form-control" required="required"/>
		</div>
		<div class="m-2 text-center">
			<input type="submit" value="Update" class="btn btn-outline-danger">
		</div>
</form:form>
<div class="text-danger text-center">${message}</div>

</body>
</html>