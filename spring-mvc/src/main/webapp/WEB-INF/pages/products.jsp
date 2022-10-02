<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
 crossorigin="anonymous">
<title>Products</title>

</head>
<body class="bg-info text-white">
<ul class="list-unstyled d-flex flex-column justify-content-center  align-items-center mt-5" style="height:400px">
<li><a href="/products/showallproducts" class="btn btn-danger mt-1">Display All Products</a></li>
<li><a href="/products/displayproductbymerchantname" class="btn btn-danger mt-2">Display Products By Merchant Name</a></li>
<li><a href="/products/add-product" class="btn btn-danger mt-2">Add Product</a></li>
<li><a href="/products/update-product" class="btn btn-danger mt-2">Update Product</a></li>
<li><a href="/products/show-products-which-available" class="btn btn-danger mt-2">Show All Products With Inventory>0</a></li>
<li><a href="/products/show-products-which-not-available" class="btn btn-danger mt-2">Show All Products With Inventory=0</a></li>
</ul>
</body>
</html>