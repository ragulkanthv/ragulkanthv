package com.myapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;



@Entity
public class Admin_Model {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@NotEmpty(message="First name required")
	private String fname;
	@NotEmpty(message="Last name required")
	private String lname;
	@NotEmpty(message="@Email name required")
	private String email;
	@NotEmpty(message="password required")
	private String password;
	
	@Pattern(regexp="[7-9]{1}[0-9]{9}",message="Mobile number should be 10 digits and starting with digit 7/8/9")
	private String contact;
	@NotEmpty(message="street required")
	private String street;
	private String apartment;
	@NotEmpty(message="City required")
	private String city;
	@NotEmpty(message="State required")
	private String state;
	
	@NotEmpty(message="State required")
	private int zipCode;
	public Admin_Model() {
		super();
	
	}
	public Admin_Model(int id, String fname, String lname, String email, String password, String contact, String street,
			String apartment, String city, String state, int zipCode) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.street = street;
		this.apartment = apartment;
		this.city = city;
		this.state = state;
		this.zipCode = zipCode;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getApartment() {
		return apartment;
	}
	public void setApartment(String apartment) {
		this.apartment = apartment;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZipCode() {
		return zipCode;
	}
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}
	@Override
	public String toString() {
		return "Admin_Model [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", password="
				+ password + ", contact=" + contact + ", street=" + street + ", apartment=" + apartment + ", city="
				+ city + ", state=" + state + ", zipCode=" + zipCode + "]";
	}
	
	
	
	
}
