<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserPage</title>
  
    <!-- Font Awesome CDN link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <!-- Custom CSS file link -->
    <link rel="stylesheet" href="css8/home1.css">
    
    <style>
        /* Internal CSS for home background */
        .home-bg {
            background: url('images8/home-bg.jpg') no-repeat center center / cover; /* Set the background image */
            height: 100vh; /* Full viewport height */
            display: flex; /* Use flexbox for alignment */
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
        }

        html{
            scroll-behavior: smooth;
        }
        
    </style>
    
</head>


<body>

    <!-- Header section -->
    <header class="header">
        <div class="flex">
            <!-- Logo -->
            <a href="admin_page.jsp" class="logo">Groco<span>.</span></a>

            <!-- Navigation menu -->
            <nav class="navbar">
                <a href="home2.jsp">Home</a>
                <a href="#home-category">Products</a>
                <a href="home2.jsp">About Us</a>
                <a href="home2.jsp">Reviews</a>
            </nav>

            <!-- Icons for menu, user, cart -->
            <div class="icons">
                <div id="user-btn" class="fas fa-user" onclick="window.location.href='login.jsp';" style="cursor: pointer;"></div>

                <a href="login.jsp"><i class="fas fa-shopping-cart"></i><span>(0)</span></a>
            </div>

            <!-- User profile section -->
            <div class="profile">
                
                <div class="flex-btn">
                    <a href="login.jsp" class="option-btn">Login</a>
                </div>
            </div>
        </div>
    </header>








    <!--  content   -->
     <!-- Home Background -->
    <div class="home-bg">
      <section class="home">
         <div class="content">
            
            
            
         </div>
      </section>
   </div>
   
    <!-- content -->
   <!--   <section id="home-category" class="home-category">
      <h1 class="title">Shop By Category</h1>
      <div class="box-container1">

         <div class="box">
            <img src="images8/cat-1.png" alt="Fruits">
            <h3></h3>
            <p></p>
            <a href="fruits.jsp" class="btn">Fruits</a>
         </div>

         <div class="box">
            <img src="images8/cat-3.png" alt="Vegetables">
            <h3></h3>
            <p></p>
            <a href="producthomeveg.jsp" class="btn">Vegetables</a>
         </div>

         <div class="box">
            <img src="images8/cat-4.png" alt="Seafood">
            <h3></h3>
            <p></p>
            <a href="seafood.jsp" class="btn">Seafood</a>
         </div>

         <div class="box">
            <img src="images8/beauty.png" alt="Beauty">
            <h3></h3>
            <p></p>
            <a href="health&beauty.jsp" class="btn">Beauty</a>
         </div>

         

      </div>
   </section>-->









    <!-- Footer Section -->
   <footer>
    <section class="box-container2">

        <div class="box">
           <h3>Quick Links</h3>
           <a href="home2.jsp"> <i class="fas fa-angle-right"></i> Home</a>
           <a href="home2.jsp"> <i class="fas fa-angle-right"></i> Products</a>
           <a href="about.jsp"> <i class="fas fa-angle-right"></i> About Us</a>
           <a href="contact.jsp"> <i class="fas fa-angle-right"></i> Reviews</a>
        </div>
  
        <div class="box">
           <h3>Extra Links</h3>
           <a href="home2.jsp"> <i class="fas fa-angle-right"></i> Cart</a>
           <a href="home2.jsp"> <i class="fas fa-angle-right"></i> Profile</a>
           <a href="login.jsp"> <i class="fas fa-angle-right"></i> Login</a>
           <a href="home2.jsp"> <i class="fas fa-angle-right"></i> Register</a>
        </div>
  
        <div class="box">
           <h3>Contact Info</h3>
           <p> <i class="fas fa-phone"></i> +94-456-7890 </p>
           <p> <i class="fas fa-phone"></i> +94-222-3333 </p>
           <p> <i class="fas fa-envelope"></i> grocery@gmail.com </p>
           <p> <i class="fas fa-map-marker-alt"></i> katugasthota,kandy </p>
        </div>
  
        <div class="box">
           <h3>Follow Us</h3>
           <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
           <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
           <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
           <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
        </div>
  
     </section>


      <p>&copy; 2024 Grocery Store. All Rights Reserved.</p>
   </footer>

   <script src="js/script.js"></script>
</body>
</html>

  
