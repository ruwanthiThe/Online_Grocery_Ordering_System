<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<link rel="stylesheet" href="update.css"> 
</head>
<body>

    <h2>Update My Profile</h2>

    <c:if test="${not empty sessionScope.id}"> 

        <form action="update" method="post">
            <%-- Use session attributes for values --%>
            Customer ID <input type="text" name="cusid" value="${sessionScope.id}" readonly><br>
            Name <input type="text" name="name" value="${sessionScope.name}"><br>
            Email <input type="text" name="email" value="${sessionScope.email}"><br>
            Phone number <input type="text" name="phone" value="${sessionScope.phone}"><br>
            User name <input type="text" name="uname" value="${sessionScope.username}"><br>

            
            Password <input type="password" name="pass" placeholder="Enter new password (if changing)"><br> 

            <input type="submit" name="submit" value="Update My Data"><br>
        </form>

    </c:if>

    <%-- If not logged in, display message or redirect --%>
    <c:if test="${empty sessionScope.id}">
        <p>You are not logged in. <a href="login.jsp">Click here to login</a>.</p>
    </c:if>

</body>
</html>