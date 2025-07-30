package productmanagementpakage;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnection {
	private static String url="jdbc:mysql://localhost:3306/productmagement";
	private static String user="root";
	private static String pass="Maleesha@8948";
	private static Connection con;
   
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,pass);
		}
		catch(Exception e) {
			System.out.println("Database not connect !");
		}
		return con;
	}

}
