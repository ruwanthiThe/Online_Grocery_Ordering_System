<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Payment Details</title>

<!-- external css file link --> 
   <link rel="stylesheet" href="css8/paymentdetails.css">
   
   
</head>
<body>
<h2>Payment Overview</h2>


    
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Address</th>
        <th>Phone</th>
        <th>Email</th>
        <th>PayMethod</th>
        <th>Date</th>
        <th>Action</th>
    </tr>
    <c:forEach var="payment" items="${allPayments}">
    <tr>
         <td>${payment.id}</td> 
         <td>${payment.name}</td> 
         <td>${payment.address}</td> 
         <td>${payment.phone}</td> 
         <td>${payment.email}</td> 
         <td>${payment.payMethod}</td> 
         <td>${payment.date}</td> 
         
         <td>
            <a href="UpdatePayment.jsp?id=${payment.id}&name=${payment.name}&address=${payment.address}&phone=${payment.phone}&email=${payment.email}&payMethod=${payment.payMethod}&date=${payment.date}">
                 <button>EDIT</button>
            </a>
            
             <!--   <form action="DeletePaymentServlet" method="post">
                  <button>Delete</button>
            </form>-->
            
            <form action="DeletePaymentServlet" method="post">
               <input type="hidden" name="id" value="${payment.id}"> <!-- Ensure this input is present -->
               <button type="submit">CANCEL</button>
            </form>
            
            
            
         </td>
     </tr>
     </c:forEach>
</table>

</body>
</html>
















