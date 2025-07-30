<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<!-- custom css file link -->
   <link rel="stylesheet" href="css8/home1.css">
   
   
   
   
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

</body>
</html>