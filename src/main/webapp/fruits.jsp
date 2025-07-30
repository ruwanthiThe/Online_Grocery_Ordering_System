<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Fruits</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel="stylesheet" href="css/producthomeveg.css">

<style>

@charset "UTF-8";
body {
    font-family: sans-serif;
    background-image: linear-gradient(#8ee5b0,rgb(255, 255, 255));
    margin: 0;
    padding: 0;
    
}

.h1_dataview{
    text-align: center;
    font-size: 3em;
    padding: 10px;
}

p {
    text-align: center;
    padding: 10px;
}

.varieties {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 1rem;
    padding: 1rem;
}

.card01 {
    background-color:#f7f7f742;
    box-shadow: 0 0 10px rgb(4 4 4 / 48%);
    padding: 1rem;
    text-align: center;
    border-radius:30px;
    cursor: pointer;
}

.card01 h3 {
    color: black;
    margin-bottom: 0.5rem;
}
.card01 a{
    text-decoration: none;

}
.card01 a :hover{
    color: #007bff;
    
}
.card01 img {
    width: 100%;
    margin-bottom: 0.5rem;
    width: 50%;
    height: auto;
    border-radius:10px;
}
.card01 img :hover{
    box-shadow: 0 0 10px rgba(5, 5, 5, 0.48);
}


</style>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    font-size: 62.5%; /* 1rem = 10px */
}

body {
    font-family: 'Poppins', sans-serif;
    line-height: 1.7;
    color: #333;
    background-color: #f1f1f1;
}

/* Flexbox for header content */
.header .flex {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 10px;
    background-color: #400040;
    color: white;
}

/* Logo styling */
.logo {
    font-size: 24px;
    font-weight: bold;
    text-transform: uppercase;
    color: #a0d6a4;
    text-decoration: none;
}

.logo span {
    color: #d2d2d2; /* Highlight for the dot in the logo */
}

/* Navigation menu */
.navbar a {
    margin: 0 15px;
    color: white;
    text-decoration: none;
    font-size: 18px;
}

.navbar a:hover {
    color: rgb(128, 255, 0); /* Hover effect color */
}

/* Icons for user, cart */
.icons {
    display: flex;
    align-items: center;
}

.icons .fas {
    color: white;
    font-size: 22px;
    margin-left: 15px;
    cursor: pointer;
}

.icons a {
    color: white;
    text-decoration: none;
    position: relative;
}

.icons a span {
    font-size: 14px;
    color: white;
    position: absolute;
    top: -8px;
    right: -10px;
    background-color: red;
    padding: 2px 5px;
    border-radius: 50%;
}

/* Profile dropdown section */
.profile {
    display: flex;
    align-items: center;
}

.profile .btn {
    background-color: #4CAF50;
    color: white;
    padding: 5px 10px;
    border-radius: 5px;
    text-decoration: none;
    font-size: 16px;
}

.profile .flex-btn {
    display: flex;
    gap: 10px;
    margin-left: 10px;
}

.profile .option-btn {
    background-color: #fff;
    color: #333;
    padding: 5px 10px;
    border-radius: 5px;
    text-decoration: none;
    font-size: 16px;
}

.profile .option-btn:hover {
    background-color: #4CAF50;
    color: white;
}

</style>
</head>
<body>

<header class="header">
    <div class="flex">
        <a href="admin_page.jsp" class="logo">Groco<span>.</span></a>
        <nav class="navbar">
            <a href="home.jsp">Home</a>
            <a href="shop.jsp">Products</a>
            <a href="about.jsp">About Us</a>
            <a href="contact.jsp">Reviews</a>
        </nav>
        <div class="icons">
            <div id="user-btn" class="fas fa-user"></div>
            <a href="cart.jsp"><i class="fas fa-shopping-cart"></i><span>(0)</span></a>
        </div>
        <div class="profile">
            <a href="profile.jsp" class="btn">Profile</a>
            <div class="flex-btn">
                <a href="home2.jsp" class="option-btn">Logout</a>
            </div>
        </div>
    </div>
</header>




<h1 class="h1_dataview">The Variety of Fruits</h1>
<p>The fruits we currently have</p>

<section class="varieties">
    <div class="card01">
        <h1 class="h1_pagedataview">Guava</h1>
        <img src="images/guava.png" alt="Guava">
        <div >Price: Rs.180.00</div>
        <button>ADD</button>
        <a href="Payment.jsp">
            <button class="success-btn">Order Now</button>
        </a>
    </div>
    
    <div class="card01">
        <h1 class="h1_pagedataview">Avacado</h1>
        <a href="avacado.jsp" target="_blank">
            <img src="images/avacado.png" alt="Avacado">
            <div>Price: Rs.180.00</div>
        </a>
        <button>ADD</button>
        <a href="Payment.jsp">
            <button class="success-btn">Order Now</button>
        </a>
    </div>
    
    <div class="card01">
        <h1 class="h1_pagedataview">Apple</h1>
        <a href="apple.jsp" target="_blank">
            <img src="images/apple.png" alt="Apple">
            <div>Price: Rs.180.00</div>
        </a>
        <button>ADD</button>
        <a href="Payment.jsp">
            <button class="success-btn">Order Now</button>
        </a>
    </div>
    
    <div class="card01">
        <h1 class="h1_pagedataview">Banana</h1>
        <img src="images/banana.png" alt="Banana">
        <div>Price: Rs.180.00</div>
        <button>ADD</button>
        <a href="Payment.jsp">
            <button class="success-btn">Order Now</button>
        </a>
    </div>
    
    <div class="card01">
        <h1 class="h1_pagedataview">Grape</h1>
        <img src="images/grape.png" alt="Grape">
        <div>Price: Rs.180.00</div>
        <button>ADD</button>
        <a href="Payment.jsp">
            <button class="success-btn">Order Now</button>
        </a>
    </div>
    
    <div class="card01">
        <h1 class="h1_pagedataview">Orange</h1>
        <img src="images/orange.png" alt="Orange">
        <div>Price: Rs.180.00</div>
        <button>ADD</button>
        <a href="Payment.jsp">
            <button class="success-btn">Order Now</button>
        </a>
    </div>
    
    <div class="card01">
        <h1 class="h1_pagedataview">Papaya</h1>
        <img src="images/papaw.png" alt="Papaya">
        <div>Price: Rs.180.00</div>
        <button>ADD</button>
        <a href="Payment.jsp">
            <button class="success-btn">Order Now</button>
        </a>
    </div>
</section>

</body>
</html>
