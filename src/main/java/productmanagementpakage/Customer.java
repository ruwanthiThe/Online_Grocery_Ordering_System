package productmanagementpakage;

public class Customer {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String userName;
	private String password;
    private String type; 
 // Constructor without type (for regular customers)
    public Customer(int id, String name, String email, String phone, String userName, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.userName = userName;
        this.password = password;
        this.type = "customer"; // Default type is "customer"
    }

    // Constructor with type (for both customers and admins)
    public Customer(int id, String name, String email, String phone, String userName, String password, String type) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.userName = userName;
        this.password = password;
        this.type = type;
    }
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public String getUserName() {
		return userName;
	}
	public String getPassword() {
		return password;
	}
	 public String getType() { // Add getter for type
	        return type;
	    }
	
}
