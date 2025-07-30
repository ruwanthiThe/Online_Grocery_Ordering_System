package productmanagementpakage;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/productmanagegetallservlet")
public class productmanagegetall extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve the list of products
		List<productmanagementmodel> allproductviewmanagements = productcontrol.getAllproductviewmanagements();
		
		// Check if allproducts is not null and contains elements
		if (allproductviewmanagements != null && !allproductviewmanagements.isEmpty()) {
			// Set the products list as a request attribute
			request.setAttribute("allproductviewmanagements", allproductviewmanagements);
			
			// Forward the request to the JSP page
			RequestDispatcher dispatcher = request.getRequestDispatcher("product.jsp");
			dispatcher.forward(request, response);
		} else {
			// Handle the case where no products are found (optional)
			request.setAttribute("errorMessage", "No products found.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
