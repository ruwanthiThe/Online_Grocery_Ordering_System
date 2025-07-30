package productmanagementpakage;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/log")
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("Test1");
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");
        System.out.println("Test2");
        try {
            List<Customer> cusDetails = CustomerDBUtil.validate(username, password);

            if (!cusDetails.isEmpty()) { // Check if a user was found
                Customer customer = cusDetails.get(0); // Get the first (and only) customer from the list

              
                HttpSession session = request.getSession();
                
                session.setAttribute("id", customer.getId());
                session.setAttribute("name", customer.getName());
                session.setAttribute("email", customer.getEmail()); 
                session.setAttribute("phone", customer.getPhone());
                session.setAttribute("username", customer.getUserName()); 
                
                System.out.println("Test3");

                if (customer.getType().equals("admin")) {
                    RequestDispatcher dis = request.getRequestDispatcher("adminHomepage.jsp"); // Redirect to admin page
                    dis.forward(request, response);
                } else { 
                    RequestDispatcher dis = request.getRequestDispatcher("home.jsp"); // Redirect to customer page
                    dis.forward(request, response);
                }
            } else {
                
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}