package com.myapp.model;

import java.util.Date;

public class DoctorAppointment {

	private int id;
	private String fname;
	private String lname;
	private String time;
	private Date date;

	public DoctorAppointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DoctorAppointment(int id, String fname, String lname, String time, Date date) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.time = time;
		this.date = date;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "DoctorAppointment [id=" + id + ", fname=" + fname + ", lname=" + lname + ", time=" + time + ", date="
				+ date + "]";
	}

}
