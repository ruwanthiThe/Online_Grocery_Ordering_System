<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success Page</title>
    
    
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <style>
        success-body {
            margin: 0;
            padding: 0;
            
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }
        .success-container {
            text-align: center;
            background-color: #fff;
            padding: 40px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        #name01 {
            font-size: 48px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        #name02 {
            font-size: 20px;
            color: #333;
        }
        .success-image {
            width: 250px;
            height: auto;
            margin: 20px 0;
        }
        .success-btn {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .success-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body class="success-body">
<jsp:include page="header.jsp" />
    <div class="success-container">
        <h1 id="name01">Success!</h1>
        <img src="images8/success.png" alt="Success Image" class="success-image">
        <p id="name02">Your payment has been processed successfully!</p>
        <a href="home.jsp" class="success-btn" >Go to Home</a>
    </div>
 <jsp:include page="footer.jsp" />   
</body>

</html>