<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
 crossorigin="anonymous">
<c:url value="/images/index-bg-image.jpg" var="background"/>
<style>
body{
background-image:url("/images/index-bg-image.jpg");
background-repeat: no-repeat;
background-size:cover;}
</style>
</head>
<body class="bg-dark text-white">
     <h1 class="text-center mt-2 text-primary">SVK ECOMMERCE STORE </h1>
     <ul class="list-unstyled d-flex justify-content-center  align-items-center mt-5">
         <li><a href="products" class="btn btn-outline-dark me-5">Products</a></li>
         <li><a href="orders" class="btn btn-outline-dark ms-5">Orders</a></li>
     </ul>
</body>
</html>







