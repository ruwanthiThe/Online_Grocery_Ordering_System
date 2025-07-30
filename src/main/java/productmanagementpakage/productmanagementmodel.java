package productmanagementpakage;

public class productmanagementmodel {
	private int p_id;
    private String p_name;
    private String p_description;
    private String p_price;
    private String p_weight;
    private String p_image;
	public productmanagementmodel(int p_id, String p_name, String p_description, String p_price2, String p_weight2,
			String p_image) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_description = p_description;
		this.p_price = p_price2;
		this.p_weight = p_weight2;
		this.p_image = p_image;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_description() {
		return p_description;
	}
	public void setP_description(String p_description) {
		this.p_description = p_description;
	}
	public String getP_price() {
		return p_price;
	}
	public void setP_price(String p_price) {
		this.p_price = p_price;
	}
	public String getP_weight() {
		return p_weight;
	}
	public void setP_weight(String p_weight) {
		this.p_weight = p_weight;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}


}

