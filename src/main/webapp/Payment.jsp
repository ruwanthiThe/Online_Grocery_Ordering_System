<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Payment</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css8/style.css">
   
  <style>
       .payment-method-label {
           display: flex;
           align-items: center;
       }
       .payment-method-label img {
           width: 80px;
           margin-right: 10px;
       }
       
       #cardDetails {
            display: none;
        }
        
       
        
   </style>
   
   <script>
   function showPaymentDetails() {
       const selectedMethod = document.querySelector('input[name="payMethod"]:checked').value;
       const paymentDetailsContainer = document.getElementById('paymentDetails');
       const cardDetails = document.getElementById('cardDetails');

    // Show card details if Credit Card is selected, otherwise hide
       if (selectedMethod === 'creditCard' || selectedMethod === 'debitCard') {
           paymentDetailsContainer.innerHTML = 'Enter Card Details:';
           cardDetails.style.display = 'block';
       } else {
           paymentDetailsContainer.innerHTML = selectedMethod === 'cashOnDelivery' ? 
               'You selected Cash on Delivery.' : 'You selected Debit Card.';
           cardDetails.style.display = 'none';
       }
   }

   function validateForm() {
       const dateInput = document.querySelector('input[name="datepicker"]');

       // Check if a payment method is selected
       const selectedMethod = document.querySelector('input[name="payMethod"]:checked');
       if (!selectedMethod) {
           alert("Please select a payment method.");
           return false;
       }

       // Check if a delivery date is selected
       if (dateInput.value === "") {
           alert("Please select a delivery date.");
           return false;
       }

       return true;
   }
   </script>

</head>

<body >
<jsp:include page="header.jsp" />
<div class="container">

    <form action="InsertPaymentServlet" method="post" onsubmit="return validateForm()">

        <div class="row">

            <div class="col">

                <h3 class="title">Shipping details</h3>
                
                <div class="inputBox">
                    <span style="font-size: 15px;">Name :</span>
                    <input type="text" name="name" placeholder="Full Name" required>
                </div>

                <div class="inputBox">
                    <span style="font-size: 15px;">Address :</span>
                    <input type="text" name="address" placeholder="Street, City, Postal Code" required>
                </div>

                <div class="inputBox">
                    <span style="font-size: 15px;">Phone Number :</span>
                    <input type="text" name="phone" placeholder="Phone Number" required>
                </div>
                
                <div class="inputBox">
                    <span style="font-size: 15px;">Email :</span>
                    <input type="email" name="email" placeholder="email" required>
                </div>
 
               
                <h3 class="title">Payment method</h3>
                <label class="payment-method-label">
                    <input type="radio" name="payMethod" value="creditCard"> 
                    <img src="images8/visacard.png" alt="Credit Card"> 
                    
                </label>
                <br>
                <label class="payment-method-label">
                    <input type="radio" name="payMethod" value="debitCard"> 
                    <img src="images8/mastercard.png" alt="Debit Card"> 
                </label>
                <br>
                <label class="payment-method-label">
                    <input type="radio" name="payMethod" value="cashOnDelivery"> 
                    <img src="images8/cashon.png" alt="Cash On Delivery"> 
                    
                </label>
                <br>
                
                
                <!-- Placeholder for payment details based on the selection -->
                <div id="paymentDetails"></div>

                <button type="button" onclick="showPaymentDetails()">Continue</button>
                
                <div class="inputBox">
					<span style="font-size: 15px;">Delivery Date :</span>
					<input type="date" class="date-picker" id="datepicker" name="date" required>
				</div>
            </div>

            <div class="col">

                
                
                
        <!-- Card details ,show only for Credit Card option -->
                
                <div id="cardDetails">
                <h3 class="title">Payment</h3>
                    <div class="inputBox">
                        <span>cards accepted :</span>
                        <img src="images8/card_img.png" alt="">
                    </div>
                    <div class="inputBox">
                        <span>Card holder name:</span>
                        <input type="text" name="holdername" placeholder="mr. john doe" >
                    </div>
                    <div class="inputBox">
                        <span>credit card number :</span>
                        <input type="number" placeholder="1111-2222-3333-4444" >
                    </div>
                    <div class="inputBox">
                        <span>exp month :</span>
                        <input type="text" placeholder="january" >
                    </div>

                    <div class="flex">
                        <div class="inputBox">
                            <span>exp year :</span>
                            <input type="number" placeholder="2022" >
                        </div>
                        <div class="inputBox">
                            <span>CVV :</span>
                            <input type="text" placeholder="123">
                        </div>
                    </div>
                </div>

           </div>
        </div>

        <input type="submit" value="Proceed Payment" class="submit-btn">

    </form>

</div>    
<jsp:include page="footer.jsp" />
</body>

</html>
