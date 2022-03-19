package com.myapp.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;

import org.hibernate.annotations.ManyToAny;

@Entity
public class BookAppointment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Temporal(TemporalType.DATE)
	@NotEmpty(message="Date required")
	private Date date;
	@NotEmpty(message="Time required")
	private String time;
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name = "patient_id")
	private Patient_details patient;
	public BookAppointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public BookAppointment(int id, Date date, String time) {
		super();
		this.id = id;
		this.date = date;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
	
	
	
	public Patient_details getPatient() {
		return patient;
	}

	public void setPatient(Patient_details patient) {
		this.patient = patient;
	}

	@Override
	public String toString() {
		return "BookAppointment [id=" + id + ", date=" + date + ", time=" + time + "]";
	}
	
    

}
