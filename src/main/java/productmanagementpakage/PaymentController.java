package productmanagementpakage;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentController {
	
	//connect db
	private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    
    //INSERT DATA Function
    public static boolean insertdata(String name, String address, String phone, String email,  String payMethod,String date) {
    	boolean isSuccess = false;
    	try {
    		//DB Connection call
    		con = dbconnection.getConnection();
    		stmt=con.createStatement();
    		
    		//SQL Query
    		String sql = "INSERT INTO payment values(0,'"+name+"','"+address+"','"+phone+"','"+email+"','"+payMethod+"','"+date+"')";
    		int rs = stmt.executeUpdate(sql);
    		if(rs>0) {
				isSuccess= true;
			}
			else {
				isSuccess= false;
			}
    	}catch(Exception e) {
			e.printStackTrace();
		}
    	return isSuccess;
    	
    }
   
    
    
    //GetByID
    public static List<Payment> getById (String Id){
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList <Payment> payment = new ArrayList<>();
    	
    	try {
    		//DB Connection
    		con = dbconnection.getConnection();
    		stmt=con.createStatement();
    		
    		//Query
    		String sql = "SELECT * FROM payment WHERE id ='"+convertedID+"'";
    		
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id= rs.getInt(1);
				String name=rs.getString(2);
				String address=rs.getString(3);
				String phone=rs.getString(4);
				String email=rs.getString(5);
				String payMethod= rs.getString(6);
				Date date = rs.getDate(7);
				
				Payment p = new Payment(id, name, address, phone, email, payMethod,date);
				
				payment.add(p);
    		}
    				
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return payment;
    }
    
    
    
    
    //GetAll Data
    public static List<Payment> getAllPayment(){
    	
    	ArrayList<Payment> payments = new ArrayList<>();
    	
    	try {
    		//DB Connection call
    		con = dbconnection.getConnection();
    		stmt=con.createStatement();
    		
    		//SQL Query
    		String sql = "SELECT * FROM payment";
    		
    		rs = stmt.executeQuery(sql);
    		
    		while (rs.next()) {
				int id= rs.getInt(1);
				String name=rs.getString(2);
				String address=rs.getString(3);
				String phone=rs.getString(4);
				String email=rs.getString(5);
				String payMethod= rs.getString(6);
				Date date = rs.getDate(7);
				
				Payment p = new Payment(id, name, address, phone, email, payMethod,date);
				payments.add(p);
				
				
    		}
    		
    	}
        catch(Exception e) {
		    e.printStackTrace();
	    }
	    return payments;
    }

    
    
    
    //Update data
    public static boolean updatedata(String id,String name, String address, String phone, String email,  String payMethod,String date) {
    	
    	try {
    		// DB Connection call
    		con = dbconnection.getConnection();
            stmt = con.createStatement();

            // SQL Query
            String sql = "UPDATE payment SET name='" + name + "', address='" + address + "', phone='" + phone + "', email='" + email + "', payMethod='" + payMethod + "', date='" + date + "' WHERE id='" + id + "'";

            int rs = stmt.executeUpdate(sql);
            
            if(rs>0) {
            	isSuccess = true;
            }
            else {
            	isSuccess = false;
            }
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
		return isSuccess;
    }
    
    
    
    //Delete data
    public static boolean deletePayment(String id) {
    	boolean isSuccess = false;
    	int convertedID = Integer.parseInt(id);
    	
    	try {
    		//DB Connection call
    		con = dbconnection.getConnection();
    		stmt=con.createStatement();
    		
    		//SQL Query
    		String sql = "DELETE FROM payment where id='"+convertedID+"'";
    		
    		int rs = stmt.executeUpdate(sql);
    		
    	if(rs>0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
    	
    }
    	catch(Exception e){
    		e.printStackTrace();
    		
    	}
    	return isSuccess;
    }
     
}












