package com.myapp.model;



import org.springframework.stereotype.Component;

@Component
public class User_login {
	
	
	private String email;
	
	private String password;
	
	public User_login() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User_login(String email, String password) {
		super();
		this.email = email;
		this.password = password;
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

	@Override
	public String toString() {
		return "User_login [email=" + email + ", password=" + password + "]";
	}
	
	

}
