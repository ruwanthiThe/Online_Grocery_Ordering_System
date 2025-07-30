package productmanagementpakage;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/DeletePaymentServlet")
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue=PaymentController.deletePayment(id);
		
		if (isTrue==true) {
            String alertMessage =" Data Deleted Successfully";
            //response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='/GetPaymentServlet';</script>");
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='" + request.getContextPath() + "/GetPaymentServlet';</script>");

        } else {
            List<Payment> paymentDetails = PaymentController.getById(id);
            request.setAttribute("paymentDetails", paymentDetails);
            
            RequestDispatcher dis = request.getRequestDispatcher("PaymentDetailsDisplay.jsp");
			dis.forward(request, response);
        }
	}

}
