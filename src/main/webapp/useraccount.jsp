<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Account</title>
<link rel="stylesheet" href="useraccount.css"> 
</head>
<body>

    <h2>My Profile</h2>

    <c:if test="${not empty sessionScope.id}">
        <table>
            <tr>
                <td>Customer ID:</td>
                <td>${sessionScope.id}</td>  <%-- Corrected typo here --%>
            </tr>
            <tr>
                <td>Name:</td>
                <td>${sessionScope.name}</td> 
            </tr>
            <tr>
                <td>Email:</td>
                <td>${sessionScope.email}</td> <%-- Added sessionScope --%>
            </tr>
            <tr>
                <td>Phone:</td>
                <td>${sessionScope.phone}</td> <%-- Added sessionScope --%>
            </tr>
            <tr>
                <td>Username:</td>
                <td>${sessionScope.username}</td> <%-- Added sessionScope --%>
            </tr>
            <%-- Don't display the password here for security reasons --%> 
        </table>

        <c:url value="updatecustomer.jsp" var="cusupdate">
            <c:param name="id" value="${sessionScope.id}" /> 
            <c:param name="name" value="${sessionScope.name}" /> 
            <c:param name="email" value="${sessionScope.email}" /> 
            <c:param name="phone" value="${sessionScope.phone}" /> 
            <c:param name="uname" value="${sessionScope.username}" /> 
            <%-- Don't pass the password here --%>
        </c:url>

        <a href="${cusupdate}">
            <input type="button" name="update" value="Update My Data">
        </a>

        <br>
        <c:url value="deletecustomer.jsp" var="cusdelete">
            <c:param name="id" value="${sessionScope.id}" /> 
            <%-- No need to pass other details for deletion --%>
        </c:url>
        <a href="${cusdelete}">
            <input type="button" name="Delete" value="Delete My Account">
        </a>

    </c:if>

    <%-- If the user is not logged in, you might want to display a message or redirect --%>
    <c:if test="${empty sessionScope.id}">
        <p>You are not logged in. <a href="login.jsp">Click here to login</a></p>
    </c:if>

</body>
</html>