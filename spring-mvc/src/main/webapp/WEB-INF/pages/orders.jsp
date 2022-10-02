<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
 crossorigin="anonymous">
<title>Orders</title>

</head>
<body class="bg-dark text-white">
<ul class="list-unstyled d-flex flex-column justify-content-center  align-items-center mt-5" style="height:400px">
<li><a href="/orders/show-orders-by-order-person"class="btn btn-success mt-2">Display Orders By Order Person</a></li>
<li><a href="/orders/show-order-by-order-id"class="btn btn-success mt-2">Display Order By Order Id</a></li>
<li><a href="/orders/add-order"class="btn btn-success mt-2">Add Order</a></li>
<li><a href="/orders/update-order"class="btn btn-success mt-2">Update Order</a></li>

</body>
</html>