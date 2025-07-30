<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- custom css file link  -->
<link rel="stylesheet" href="css8/updatepage.css">

</head>
<body>

    <%
         String id = request.getParameter("id");
         String name = request.getParameter("name");
         String address = request.getParameter("address");
         String phone = request.getParameter("phone");
         String email = request.getParameter("email");
         String payMethod = request.getParameter("payMethod");
         String date = request.getParameter("date");
     %>
     
     
<form action="UpdatePaymentServlet" method="post">
         ID<input type="text" name="id" value="<%= id%>" readonly><br>
         Name<input type="text" name="name" value="<%= name%>"><br>
         Address<input type="text" name="address" value="<%= address%>"><br>
         Phone<input type="text" name="phone" value="<%= phone%>"><br>
         Email<input type="text" name="email" value="<%= email%>"><br>
         Payment Method<input type="text" name="payMethod" value="<%= payMethod%>"readonly><br>
         Delivery Date<input type="date" name="date" value="<%= date%>"><br>
         
         <input type="submit" name="submit" value="Update My Data"><br>
</form>
     

</body>
</html>