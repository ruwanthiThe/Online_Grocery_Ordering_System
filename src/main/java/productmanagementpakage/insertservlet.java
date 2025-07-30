package productmanagementpakage;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/insertservlet")
public class insertservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set content type and character encoding
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        // Initialize variables for the product details
        String p_name = request.getParameter("p_name");
        String p_description = request.getParameter("p_description");
        String p_image = request.getParameter("p_image");
        String p_price = request.getParameter("p_price");
        String p_weight = request.getParameter("p_weight");
        boolean isTrue = false;

        try {
            // Insert product data into the database
            isTrue = productcontrol.insertData(p_name, p_description, p_price, p_weight, p_image);

            // Check if insertion was successful and handle the response accordingly
            if (isTrue) {
                // Display success message with alert and redirect
                String alertMessage = "Data insert successful";
                response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='productmanagegetallservlet'</script>");
            } else {
                // Forward to "wrong.jsp" if insertion fails
                RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
                dis2.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // If an exception occurs, forward to error page
            RequestDispatcher dis2 = request.getRequestDispatcher("error.jsp");
            dis2.forward(request, response);
        }
    }
}
