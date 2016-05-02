package spring.web.dao;

public class Offer {
	private int id;
	private String name;
	private String email;
	private String info;
	
	public Offer() {
		
	}

	public Offer(String name, String email, String info) {
		this.name = name;
		this.email = email;
		this.info = info;
	}
	
	

	public Offer(int id, String name, String email, String info) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.info = info;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	@Override
	public String toString() {
		return "Offer [id=" + id + ", name=" + name + ", email=" + email
				+ ", text=" + info + "]";
	}

}
