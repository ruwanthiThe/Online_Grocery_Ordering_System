package productmanagementpakage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
// Removed unused import: import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class productcontrol {

    // Insert data function
    public static boolean insertData(String p_name, String p_description, String p_price, String p_weight, String p_image) {
        boolean isSuccess = false;

        // Parse p_price and p_weight from String to double
        double price;
        double weight;

        try {
            price = Double.parseDouble(p_price);
            weight = Double.parseDouble(p_weight);
        } catch (NumberFormatException e) {
            e.printStackTrace(); // Log parsing errors
            return false; // Return false if parsing fails
        }

        String sql = "INSERT INTO productviewmanagement (p_name, p_description, p_price, p_weight, p_image) VALUES (?, ?, ?, ?, ?)";

        // Use try-with-resources to manage resources
        try (Connection con = dbconnection.getConnection(); 
             PreparedStatement pstmt = con.prepareStatement(sql)) {
             
            pstmt.setString(1, p_name);
            pstmt.setString(2, p_description);
            pstmt.setDouble(3, price);
            pstmt.setDouble(4, weight);
            pstmt.setString(5, p_image);

            // Execute update and check if insertion was successful
            int result = pstmt.executeUpdate();
            isSuccess = result > 0; // If result > 0, the data was inserted successfully
        } catch (SQLException e) {
            e.printStackTrace(); // Log SQL exceptions
        }

        return isSuccess; // Return true if the insertion was successful
    }

    // Get product by ID
    public static List<productmanagementmodel> getById(String id) {
        List<productmanagementmodel> productviewmanagement = new ArrayList<>();

        String sql = "SELECT * FROM productviewmanagement WHERE p_id = ?";

        try (Connection con = dbconnection.getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql)) {
             
            pstmt.setInt(1, Integer.parseInt(id));
            
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    int p_id = rs.getInt("p_id");
                    String p_name = rs.getString("p_name");
                    String p_description = rs.getString("p_description");
                    String p_price = rs.getString("p_price");
                    String p_weight = rs.getString("p_weight");
                    String p_image = rs.getString("p_image");

                    // Create a new productmanagementmodel object with the retrieved data
                    productmanagementmodel pr = new productmanagementmodel(p_id, p_name, p_description, p_price, p_weight, p_image);
                    productviewmanagement.add(pr); // Add the product object to the 'product' list
                }
            }
        } catch (SQLException | NumberFormatException e) {
            e.printStackTrace(); // Handle SQL and parsing exceptions
        }

        return productviewmanagement;
    }

    // Get all products
    public static List<productmanagementmodel> getAllproductviewmanagements() {
        List<productmanagementmodel> productviewmanagements = new ArrayList<>();
        String sql = "SELECT * FROM productviewmanagement";

        try (Connection con = dbconnection.getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                int p_id = rs.getInt("p_id");
                String p_name = rs.getString("p_name");
                String p_description = rs.getString("p_description");
                String p_price = rs.getString("p_price");
                String p_weight = rs.getString("p_weight");
                String p_image = rs.getString("p_image");

                productmanagementmodel pr = new productmanagementmodel(p_id, p_name, p_description, p_price, p_weight, p_image);
                productviewmanagements.add(pr); // Add to the list
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQL exceptions
        }

        return productviewmanagements;
    }

    // Update data
    //public static boolean updateData(int id, String p_name, String p_description, double p_price, double p_weight, String p_image) {
       // boolean isSuccess = false;
       
        //String sql = "UPDATE productviewmanagement SET p_name = ?, p_description = ?, p_price = ?, p_weight = ?, p_image = ? WHERE p_id = ?";

       

        //try (Connection con = dbconnection.getConnection();
             //PreparedStatement pstmt = con.prepareStatement(sql)) {

            //pstmt.setString(1, p_name);
            //pstmt.setString(2, p_description);
           // pstmt.setDouble(3, p_price);
            //pstmt.setDouble(4, p_weight);
           // pstmt.setString(5, p_image);
           // pstmt.setInt(6, id);

            // Execute the update query
            //int result = pstmt.executeUpdate(sql);
            //int result = pstmt.executeUpdate();

           // isSuccess = result > 0; // Check if the update was successful
        //} catch (SQLException e) {
           // e.printStackTrace(); // Handle SQL exceptions
       // }

       // return isSuccess; // Return the result of the update (true if successful, false otherwise)
    //}
    public static boolean updatedata(String p_id, String p_name, String p_description, String p_price, String p_weight, String p_image) {
   	 boolean isSuccess = false;
		try {
   		 Connection con = dbconnection.getConnection();
   		 Statement stmt = con.createStatement();
   		 
   		 String sql="UPDATE  productviewmanagement  SET p_name='"+p_name+"',p_description='"+p_description+"',p_price='"+p_price+"',p_weight='"+p_weight+"',p_image='"+p_image+"'where p_id='"+p_id+"'";
   		 
   		 int rs=stmt.executeUpdate(sql);
   		 if(rs>0) {
   			 isSuccess=true;
   		 }
   		 else {
   			 isSuccess=false;
   		 }
   	 }catch(Exception e) {
   		 e.printStackTrace();
   	 }
   	 return isSuccess;
   	 
    }

    // Delete data
    public static boolean deletedata(String id) {
        boolean isSuccess = false;
        String sql = "DELETE FROM productviewmanagement WHERE p_id = ?";

        try (Connection con = dbconnection.getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql)) {

            pstmt.setInt(1, Integer.parseInt(id));
            int result = pstmt.executeUpdate();
            isSuccess = result > 0; // Check if the deletion was successful
        } catch (SQLException | NumberFormatException e) {
            e.printStackTrace(); // Handle SQL and parsing exceptions
        }

        return isSuccess;
    }
}

