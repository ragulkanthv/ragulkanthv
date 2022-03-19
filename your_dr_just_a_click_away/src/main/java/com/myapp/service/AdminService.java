package com.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myapp.dao.Admin_repository;
import com.myapp.model.Admin_Model;

@Service
public class AdminService {

	@Autowired
	private Admin_repository adminRepo;
	
	public Admin_Model getByEmail(String Email)
	{
		Admin_Model adminmodel=(Admin_Model) adminRepo.findByEmail(Email);                                                               
		return adminmodel;
	}
	
	public List<Admin_Model> getAdmin()
	{
		List<Admin_Model> list=(List<Admin_Model>) adminRepo.findAll();	
		return list;
	}
}
