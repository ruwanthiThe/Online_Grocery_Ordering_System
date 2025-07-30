<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login for html css</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="login-form">
       
        <div class="container">
            <div class="main">
                <div class="content">
                    <h2>Log In</h2>
                    <form action="log" method="post">
                        <input type="text" name="uid" placeholder="User Name" required autofocus="">
                        <input type="Password" name="pass" placeholder="User Password" required autofocus="">
                        <button class="btn" type="Submit">
                            Login
                        </button>
                       
                    </form>
                    <p class="account">Don,t have an account? <a href="#">Register</a></p>
                </div>
                <div class="form-img">
                    <img src="4.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</body>
</html>