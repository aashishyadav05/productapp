<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            border-radius: 1rem;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        .form-control:focus {
            border-color: #007bff;
            box-shadow: none;
        }
    </style>
</head><body>


	<div class="container mt-5">
	    <div class="row justify-content-center">
	        <div class="col-md-8 col-lg-6">
	            <div class="card p-4">
	                <h3 class="text-center mb-4">🛍️ Update Product Details</h3>
	
	                <form action="${pageContext.request.contextPath}/handle-add-product" method="post">
	                
	                    <div class="form-group">
		                    <label for="name"><strong>Product Name</strong></label>
		                	<input class="form-control" type="text" value="${product.id}" name="id" readonly="readonly">
	    				</div>
	                    <!-- Product Name -->
	                    <div class="form-group">
	                        <label for="name"><strong>Product Name</strong></label>
	                        <input type="text" class="form-control" id="name" name="name" value="${product.name}" required>
	                    </div>
	
	                    <!-- Description -->
	                    <div class="form-group">
	                        <label for="description"><strong>Description</strong></label>
	                        <textarea class="form-control" id="description" name="description" rows="3"  required>${product.description}</textarea>
	                    </div>
	
	                    <!-- Price -->
	                    <div class="form-group">
	                        <label for="price"><strong>Price (₹)</strong></label>
	                        <input type="number" class="form-control" id="price" name="price" value="${product.price}" required>
	                    </div>
	
	                    <!-- Buttons -->
	                    <div class="d-flex justify-content-between mt-4">
	                        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">⬅ Back</a>
	                        <button type="submit" class="btn btn-primary"> Save</button>
	                    </div>
	                </form>
	
	            </div>
	        </div>
	    </div>
	</div>

</body>
</html>