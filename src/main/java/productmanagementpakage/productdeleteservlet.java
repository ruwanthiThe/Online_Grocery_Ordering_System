package productmanagementpakage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;

@WebServlet("/productdeleteservlet")
public class productdeleteservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Implement any necessary GET logic here (if needed)
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch the product ID from the request
        String p_id = request.getParameter("p_id");
        
        // Call the delete method from productcontrol
        boolean isTrue = productcontrol.deletedata(p_id);
        
        // If deletion was successful
        if (isTrue) {
            String alertMessage = "Data delete successful";
            // Send an alert and redirect to 'getallservlet'
            response.getWriter().println("<script>alert('" + alertMessage + "');" +
                                         "window.location.href='productmanagegetallservlet'</script>");
        } 
        // If deletion failed
        else {
            // Fetch product details and set them as request attributes
            List<productmanagementmodel> productdetails = productcontrol.getById(p_id);
            request.setAttribute("productdetails", productdetails);
            
            // Forward to the wrong.jsp page if deletion fails
            RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
            dispatcher.forward(request, response);
        }
    }
}
	