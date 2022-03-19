package com.myapp.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;


import com.myapp.model.Patient_details;

public interface Patient_repository extends CrudRepository<Patient_details, Integer>{
	
	public List<Patient_details> findByemail(String email);
	
	public List<Patient_details> findByEmailAndPassword(String email,String password);

}
