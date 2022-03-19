package com.myapp.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;


import com.myapp.model.Admin_Model;



public interface Admin_repository extends CrudRepository<Admin_Model, Integer>{

	public List<Admin_Model> findByEmailAndPassword(String email,String password);
	
	public List<Admin_Model> findByEmail(String email);
	
	
	
	
}
