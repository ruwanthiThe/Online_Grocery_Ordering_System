<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Table</title>
    <link rel="stylesheet" type="text/css" href="css/products.css">
    <style >
    @charset "UTF-8";

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 20px;
}

h2 {
    color: #333;
}

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    margin-bottom: 20px;
    border-collapse: collapse;
}

td {
    padding: 10px;
}

input[type="text"],
input[type="number"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

textarea {
    resize: vertical;
}

input[readonly] {
    background-color: #e9ecef;
}

button {
    padding: 10px 20px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

.button {
    padding: 5px 10px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background-color: #218838;
}

input[type="submit"] {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

a.update-link {
    margin-right: 10px; /* Adjust as needed for spacing */
}
    
    
    
    
    </style>
    
</head>
<body>
    <h1>Product List</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Weight</th>
                <th>Image</th>
                <th>Action</th> 
            </tr>
        </thead>
        <tbody>
            <!-- Iterate over the products list -->
              
            <c:forEach var="productviewmanagement" items="${allproductviewmanagements}">
                <tr>
                    <td>${productviewmanagement.p_id}</td>
                    <td>${productviewmanagement.p_name}</td>
                    <td>${productviewmanagement.p_description}</td>
                    <td>${productviewmanagement.p_price}</td>
                    <td>${productviewmanagement.p_weight}</td>
                    <td><img src="${productviewmanagement.p_image}" alt="Product Image" width="100" height="100"></td>
                    <td>
                        <!-- Update and Delete buttons -->
                        
                        <a href="updatemanage.jsp?p_id=${productviewmanagement.p_id}&p_name=${productviewmanagement.p_name}&p_description=${productviewmanagement.p_description}&p_price=${productviewmanagement.p_price}&p_weight=${productviewmanagement.p_weight}&p_image=${productviewmanagement.p_image}" >
                            <button>Update</button>
                        </a>
						
							
                         <form action="productdeleteservlet" method="post" style="display:inline;">
                            <input type="hidden" name="p_id" value="${productviewmanagement.p_id}">
                            <button type="submit">Delete</button>
                        </form>             
                         </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>