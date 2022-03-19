package com.myapp.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotEmpty;

@Entity
public class Patient_details {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@NotEmpty(message="First name required")
	private String fname;
	@NotEmpty(message="Last name required")
	private String lname;
	@NotEmpty(message="Email required")
	private String email;
	@NotEmpty(message="Password required")
	private String password;
	@NotEmpty(message="Contact details required")
	private String contact;
	@NotEmpty(message="Gender required required")
	private String gender;
	@NotEmpty(message="City required")
	private String city;
	
	
	
	@NotEmpty(message="State required")
	private String state;
	@NotEmpty(message="Pincode required")
	private int zipcode;
	
	@OneToMany(mappedBy = "patient")
	private List<BookAppointment> appointments = new ArrayList<BookAppointment>();
	
	
	public Patient_details() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	public Patient_details(int id, @NotEmpty(message = "First name required") String fname,
			@NotEmpty(message = "Last name required") String lname, @NotEmpty(message = "Email required") String email,
			@NotEmpty(message = "Password required") String password,
			@NotEmpty(message = "Contact details required") String contact,
			@NotEmpty(message = "Gender required required") String gender,
			@NotEmpty(message = "City required") String city, @NotEmpty(message = "State required") String state,
			@NotEmpty(message = "Pincode required") int zipcode, List<BookAppointment> appointments) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.gender = gender;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
		this.appointments = appointments;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	@Override
	public String toString() {
		return "Doctor_details [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email
				+ ", password=" + password + ", contact=" + contact + ", gender=" + gender + ", city=" + city
				+ ", state=" + state + ", zipcode=" + zipcode + "]";
	}
	
	public void addAppointment(BookAppointment appointment)
	{
		this.appointments.add(appointment);
	}
	public List<BookAppointment> getAppointments() {
		return appointments;
	}
	public void setAppointments(List<BookAppointment> appointments) {
		this.appointments = appointments;
	}
	
	
	
}
