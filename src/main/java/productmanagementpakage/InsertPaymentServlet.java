package productmanagementpakage;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/InsertPaymentServlet")
public class InsertPaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");    
        String address = request.getParameter("address");
        String phone = request.getParameter("phone"); 
        String email = request.getParameter("email");
        String payMethod = request.getParameter("payMethod");
        String date = request.getParameter("date");
        
        
        boolean isTrue = PaymentController.insertdata(name, address, phone, email, payMethod, date);
        
        if (isTrue==true) {
            String alertMessage =" Your Payment Completed Successfully";
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='success.jsp';</script>");
            //response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='" + request.getContextPath() + "/GetPaymentServlet';</script>");

        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }
}




