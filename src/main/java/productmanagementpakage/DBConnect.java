/*package productmanagementpakage;

import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/productmagement";
	private static String userName = "root";
	private static String password = "Maleesha@8948";
	private static Connection Con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Con = DriverManager.getConnection(url, userName, password);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is not success");
		}
		
		return Con;
	}

}*/
