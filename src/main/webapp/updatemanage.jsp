<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
    <meta charset="UTF-8">
    <title>Update Product</title>
      <link rel="stylesheet" href="css/updatemanage.css">
  <style >
  
      @charset "UTF-8";
/* General Styles */
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

input[type="text"], input[type="number"], textarea {
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
      
      
      
      </style>
</head>
<body>
<%
    // Retrieve parameters passed to the form, with null checks
    String p_id = request.getParameter("p_id");
    String p_name = request.getParameter("p_name");
    String p_description = request.getParameter("p_description");
    String p_price = request.getParameter("p_price");
    String p_weight = request.getParameter("p_weight");
    String p_image = request.getParameter("p_image");
    
    
   
%>

<h2>Update Product Details</h2>
<form action="productupdateservlet1" method="post"> 


    <table>
    
        
        <tr>
        <td>id</td>
        <td><input type="text" id="p_id" name="p_id" value="<%=p_id %>" readonly></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="p_name" value="<%=p_name %>"required></td>
        </tr>

        <!-- Description Input -->
        <tr>
            <td>Description:</td>
            <td><input id="p_description" name="p_description" value="<%=p_description%>"required></td>
        </tr>

        <!-- Price Input -->
        <tr>
            <td>Price:</td>
            <td><input type="number" name="p_price" value="<%=p_price %>"required></td>
        </tr>

        <!-- Weight Input -->
        <tr>
            <td>Weight:</td>
            <td><input type="number" name="p_weight" value="<%=p_weight %>"required></td>
        </tr>

        <!-- Image Input -->
        <tr>
            <td>Image:</td>
            <td><input type="text" name="p_image" value="<%=p_image %>"required></td>
        </tr>

        <!-- Submit Button -->
        <tr>
            <td colspan="2"><input type="submit" value="Update"></td>
        </tr>
    </table>
</form>
</body>
</html>
