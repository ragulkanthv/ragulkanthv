package com.myapp.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.myapp.model.Doctor_details;

public interface Doctor_repository extends CrudRepository<Doctor_details, Integer>{

	List<Doctor_details> findByFname(String fname);
	Doctor_details findById(int id);
	
	public List<Doctor_details> findByemail(String email);
	
	public List<Doctor_details> findByZipcode(int zipcode);
	
	
}
