package Models;

public class Company {

	int id;
	String name;
	String street;
	String country;
	String postcode;

	public Company() {
	}

	public Company(int id, String name, String street, String country, String postcode) {
		this.id = id;
		this.name = name;
		this.street = street;
		this.country = country;
		this.postcode = postcode;
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

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
}

