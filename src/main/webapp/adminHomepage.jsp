<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home Page</title>
    <style>
        
        .admin-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #400040;
            padding: 18px 10px;
            color: #ffffff;
            position: fixed;
            width: 100%;
            top: 0;
            
        }
        .admin-header .logo {
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            /*color: white;*/
            color: #a0d6a4;
            text-decoration: none;
            margin-left: 10px;
        }
        
        .admin-header .logo span{
            color: #d2d2d2; 
        }
        .admin-header .logout-btn {
            background-color: #dc3545;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 15px;
            text-decoration: none;
        }
        .admin-header .logout-btn:hover {
            background-color: #c82333;
        }
        
        
        .admin-body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images8/admin.jpg'); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        
        .admin-container {
            display: flex;
            justify-content: space-around;
            width: 60%;
            padding-top: 100px; 
        }

        
        .admin-box {
            background-color: rgba(255, 255, 255, 0.9);
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 200px;
            text-align: center;
            border-radius: 8px;
        }
        .admin-box h2 {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .btn {
            padding: 10px 20px;
            background-color: #28a745;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            display: inline-block;
         }

        .btn:hover {
            background-color: #218838;
         }
    </style>
</head>
<body class="admin-body">

    
    <div class="admin-header">
        <a href="admin_page.jsp" class="logo">Groco<span>.</span></a>
        <a href="home2.jsp" class="logout-btn">Logout</a>
    </div>

    
    <div class="admin-container">
        <div class="admin-box">
            <h2>Manage Orders</h2>
            <a href="GetPaymentServlet" class="btn">Go</a>

        </div>

        <div class="admin-box">
            <h2>Manage Products</h2>
            <a href="insert.jsp" class="btn">Go</a>
        </div>
    </div>

</body>
</html>