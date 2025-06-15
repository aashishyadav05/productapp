<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
</head>
<body>

	
<div class="container mt-5">
    <div class="d-flex justify-content-between mb-4">
        <h2 class="text-primary">🛍️ All Products</h2>
        <a href="${pageContext.request.contextPath}/add-product" class="btn btn-success">➕ Add New Product</a>
    </div>

    <c:if test="${empty products}">
        <div class="alert alert-info text-center">
            No products available. Click "Add New Product" to insert one.
        </div>
    </c:if>

    <c:if test="${not empty products}"> 
        <div class="table-responsive">
            <table class="table table-bordered table-hover text-center">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>🛍️ Name</th>
                        <th>📝 Description</th>
                        <th>💰 Price (₹)</th>
                        <th>⚙️ Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td>${product.id}</td>
                            <td>${product.name}</td>
                            <td>${product.description}</td>
                            <td>${product.price}</td>
                            <td>
                                <a href="handle-edit/${product.id}" class="btn btn-outline-warning btn-sm">✏️ Edit</a>
                                <a href="handle-delete/${product.id}" class="btn btn-outline-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?')">🗑️ Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
   </c:if> 
</div>

</body>
</html>
