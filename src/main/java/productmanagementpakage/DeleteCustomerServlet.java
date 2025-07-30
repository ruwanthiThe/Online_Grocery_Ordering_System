package productmanagementpakage;

import java.io.IOException;

import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/delete")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		boolean isTrue;
		
		isTrue = CustomerDBUtil.deletecustomer(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerdetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
