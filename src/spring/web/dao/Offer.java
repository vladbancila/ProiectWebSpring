package spring.web.dao;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Offer {
	private int id;

	@NotNull
	@Size(min = 3, max = 100, message="Numele trebuie sa fie cuprins intre 3 si 100 de caractere")
	private String name;

	@NotNull
	@Pattern(regexp=".*\\@.*\\..*",message="This does not appear to be a viable email")
	private String email;
	
	@NotNull
	@Size(min = 10, max = 255, message="Campul info trebuie sa fie cuprins intre 10 si 255 de caractere")
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
		return "Offer [id=" + id + ", name=" + name + ", email=" + email + ", text=" + info + "]";
	}

}
