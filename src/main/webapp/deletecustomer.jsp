<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- Add taglib for JSTL --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Account</title>
<link rel="stylesheet" href="deletecustomer.css">
</head>
<body>

    <h1>Customer Account Delete</h1>

    <%-- Check if the user is logged in --%>
    <c:if test="${not empty sessionScope.id}"> 

        <form action="delete" method="post">
            <%-- Use session attributes for values --%>
            Customer ID <input type="text" name="cusid" value="${sessionScope.id}" readonly><br>
            Name <input type="text" name="name" value="${sessionScope.name}" readonly><br>
            Email <input type="text" name="email" value="${sessionScope.email}" readonly><br>
            Phone number <input type="text" name="phone" value="${sessionScope.phone}" readonly><br>
            User name <input type="text" name="uname" value="${sessionScope.username}" readonly><br>

            <input type="submit" name="submit" value="Delete My Account"><br>
        </form>

    </c:if>

    <%-- If not logged in, display message or redirect --%>
    <c:if test="${empty sessionScope.id}">
        <p>You are not logged in. <a href="login.jsp">Click here to login</a>.</p>
    </c:if>

</body>
</html>