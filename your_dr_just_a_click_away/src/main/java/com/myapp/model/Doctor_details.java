package com.myapp.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotEmpty;

@Entity
public class Doctor_details {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@NotEmpty(message="First name required")
	private String fname;
	@NotEmpty(message="Last name required")
	private String lname;
	@NotEmpty(message="Email required")
	private String email;
	@NotEmpty(message="Experience required")
	private int experience;
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
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="appointment_id")
	private List<BookAppointment> appointments;
	public Doctor_details() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Doctor_details(int id, String fname, String lname, String email, int experience, String contact,
			String gender, String city, String state, int zipcode) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.experience = experience;
		this.contact = contact;
		this.gender = gender;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
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
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
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
	
	
	
	public List<BookAppointment> getAppointments() {
		return appointments;
	}
	public void setAppointments(List<BookAppointment> appointments) {
		this.appointments = appointments;
	}
	@Override
	public String toString() {
		return "Doctor_details [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email
				+ ", experience=" + experience + ", contact=" + contact + ", gender=" + gender + ", city=" + city
				+ ", state=" + state + ", zipcode=" + zipcode + "]";
	}
	
	
	
	
	
}
