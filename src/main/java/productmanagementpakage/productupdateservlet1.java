package productmanagementpakage;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/productupdateservlet1")
public class productupdateservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String p_id=request.getParameter("p_id");
		 String p_name = request.getParameter("p_name");
	     String p_description = request.getParameter("p_description");
	     String p_image = request.getParameter("p_image");
	     String p_price = request.getParameter("p_price");
	     String p_weight = request.getParameter("p_weight");
		
		boolean isTrue;
		isTrue=productcontrol.updatedata(p_id, p_name, p_description, p_price, p_weight, p_image);
		 if (isTrue==true) {
			 List<productmanagementmodel>productviewmanagement=productcontrol.getById(p_id);
			 request.setAttribute("productviewmanagement",productviewmanagement);
             // Display success message with alert and redirect
             String alertMessage = "Data update successful";
             response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='productmanagegetallservlet'</script>");
         } else {
             // Forward to "wrong.jsp" if insertion fails
             RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
             dis2.forward(request, response);
         }
	}

}
