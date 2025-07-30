package productmanagementpakage;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");    
        String address = request.getParameter("address");
        String phone = request.getParameter("phone"); 
        String email = request.getParameter("email");
        String payMethod = request.getParameter("payMethod");
        String date = request.getParameter("date");
        
        
        boolean isTrue;
		
		isTrue = PaymentController.updatedata(id,name, address, phone, email, payMethod, date);
		
		 if (isTrue==true) {
			    List<Payment> paymentdetails = PaymentController.getById(id);
			    request.setAttribute("paymentdetails", paymentdetails);
			    
	            String alertMessage =" Data Updated Successfully";
	            //response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='/GetPaymentServlet';</script>");
	            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='" + request.getContextPath() + "/GetPaymentServlet';</script>");

	     } else {
	            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
	            dis2.forward(request, response);
	     }
	}

}
