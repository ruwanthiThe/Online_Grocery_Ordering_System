<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/insert.css">

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



<form action="insertservlet" method="post"> <!-- Correct action for form submission -->
    <table>
                <!-- Name Input -->
        <tr>
            <td>Name:</td>
            <td><input type="text" name="p_name" required></td>
        </tr>

        <!-- Description Input -->
        <tr>
            <td>Description:</td>
            <td><textarea name="p_description" required></textarea></td> <!-- Closing textarea tag correctly -->
        </tr>

        <!-- Price Input -->
        <tr>
            <td>Price:</td>
            <td><input type="number" step="0.01" name="p_price" required></td> <!-- Changed input type to 'number' and added 'step' for decimals -->
        </tr>

        <!-- Weight Input -->
        <tr>
            <td>Weight:</td>
            <td><input type="number" step="0.01" name="p_weight" required></td> <!-- Changed input type to 'number' for numerical input -->
        </tr>

        <!-- Image Input -->
        <tr>
            <td>Image:</td>
            <td><input type="text" name="p_image" required></td> <!-- Assuming image is a URL or path -->
        </tr>

        <!-- Submit Button -->
        <tr>
            <td colspan="2"><input type="submit" value="Submit"></td>
        </tr>
    </table>
    </form>

</body>
</html>