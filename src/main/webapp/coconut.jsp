<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Big Onion</title>
        <link rel="stylesheet" href="css/vegetables.css">
        <link rel="stylesheet" href="css/onion.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <style >
        @charset "UTF-8";
.containt-page{
    padding: 1rem;
}
.details_view{
    text-align: left;
}
.h1_pagedataview{
    text-align: left;
    font-size: 3rem;
}
.page_p{
    text-align: left;
    margin: 3px 0;
    font-family: 'poppins',sans-serif;
}
.spec_details {
    background-color: #ffffff; 
    border: 2px solid #00ff95;
    border-radius: 3px; 
    padding: 20px; 
    overflow: hidden;
    margin-top: 5%;
}
.spec_subdetails{
    background-color: #ffffff; 
    border: 2px solid #00ffae; 
    border-radius: 20px; 
    padding: 20px; 
    overflow: hidden;
    margin: 0 auto;
    margin-top: 2%;
}

.spec_details h2 {
    margin-top: 0; 
}

.spc_col1 {
    float: left; 
    width: 20%; 
    
}

.spc_col2 {
    float: left; 
    width: 80%; 
    padding-top: 10px;
}

.spc_col2 div {
    margin-bottom: 10px; 
    font-size: 1.5rem;
}

.spc_col2 div:first-child {
    font-weight: bold; 
}

.spc_col1 img {
    display: block; 
    width: 50%;
    height: auto; 
    margin: 0 auto; 
    padding: 0;
}

@media (min-width: 768px) {
    .h1_pagedataview {
        font-size: 2.5rem;
    }
    
    .spc_col1, .spc_col2 {
        float: left; 
    
    }


    .spc_col1 {
        width: 20%;
    }

    .spc_col2 {
        width: 80%;
        padding-top: 10px;
    }

    .spc_col1 img {
        width: 50%; 
    }

    .spc_col2 div {
        font-size: 1.5rem;
    }
}
body{
    background-image: linear-gradient(#77ff00,white);
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


<section class="containt-page">
            <div class="details_view">
                <h1 class="h1_pagedataview">Coconut</h1>
                <p class="page_p">Coconut is a high-fat fruit that has a wide range of health benefits. These include providing you with disease-fighting antioxidants, promoting blood sugar regulation, and reducing certain risk factors for heart disease.</p>
                <p class="page_p">However, coconut is very high in fat and calories, so watch your portion sizes if you are trying to lose weight or need to follow a low-fat diet.</p>
                <p class="page_p">Whether you eat it raw, dried, or as flour, coconut meat is delicious and easy to incorporate into both sweet and savory dishes.</p>
            </div>
            <div>
                <div class="spec_details">
                    <h2>vegetable</h2>
                    
                    <div class="spec_subdetails">
                        <div class="spc_col1">
                          <img src="images/coconut.png" alt="Coconut">
                        </div>
                        <div class="spc_col2">
                            <div>Price:Rs.381.00</div>
                            <p style="text-align: left;">3.00pcs</p>
                        </div>
                    </div>
                
                    
                    <div class="spec_subdetails">
                        <div class="spc_col1">
                          <img src="images/shopping-cart.png" alt="Coconut">
                        </div>
                        <div class="spc_col2">
                            <div>Add to cart</div>
                            <p style="text-align: left;"><button>ADD</button></p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
</body>
</html>