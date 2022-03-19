package com.myapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FeedbackForm {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String feedback;
	public FeedbackForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FeedbackForm(int id, String feedback) {
		super();
		this.id = id;
		this.feedback = feedback;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	@Override
	public String toString() {
		return "FeedbackForm [id=" + id + ", feedback=" + feedback + "]";
	}
	
}
