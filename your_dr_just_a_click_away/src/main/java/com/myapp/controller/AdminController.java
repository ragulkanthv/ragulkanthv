package com.myapp.controller;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.myapp.dao.Admin_repository;
import com.myapp.dao.Doctor_repository;
import com.myapp.dao.Feedback_repository;
import com.myapp.model.Admin_Model;
import com.myapp.model.Doctor_details;
import com.myapp.model.FeedbackForm;
import com.myapp.model.User_login;

@Controller
public class AdminController {
	
	
	@Autowired
	private Admin_repository adminrepository;
	@Autowired
	private Doctor_repository doctorRepository;
	
	@Autowired
	private Feedback_repository feedbackRepository;
	
	@GetMapping("/")
	public String homePage()
	{
		return "Homepage";
	}
	
	@RequestMapping("/adminform")
	public String adminForm()
	{
		return "Adminregistrationjsp";
	}
	
	@PostMapping("/adminregistration")
	public String getRegistration(@ModelAttribute Admin_Model admin,Model model)
	{
		List<Admin_Model> adminModel=adminrepository.findByEmail(admin.getEmail());
		if(adminModel.isEmpty()) {
		this.adminrepository.save(admin);
		return "Homepage";
		}
		else {
			model.addAttribute("exist","User already exist");
			return "Adminregistrationjsp";
		}
		
		
	}
	
	@RequestMapping("/adminlogin")
	public String adminloginForm()
	{
		return "Adminlogin";
	}
	
	@PostMapping("/login")
	public String Getinto(@ModelAttribute User_login userlogin,Model model,HttpSession session ) {
		
		
		
		List<Admin_Model> s=this.adminrepository.findByEmailAndPassword(userlogin.getEmail(), userlogin.getPassword());
		
		
		if(s.isEmpty()  )
		{
			model.addAttribute("valid","Incorrect username or password");
			return "Adminlogin";
		}

		
		else {
			session.setAttribute("email", userlogin.getEmail());
			return "redirect:/viewdoctor";
		}
		
	}
	
	@RequestMapping("/deletedoctor/{id}")
	public String deleteDoctor(@PathVariable int id,Model model)
	{
		this.doctorRepository.deleteById(id);

		return "redirect:/viewdoctor";
	}
	

	
	@RequestMapping(path="/adddoctor")
	public String doctorRegistration()
	{
		
		return "Doctorregistration";
	}
	
	@PostMapping("/doctorregistration")
	public String addDoctor(@ModelAttribute("doctor") Doctor_details doctor, Model model)
	{
		List<Doctor_details> doctorDetails=doctorRepository.findByemail(doctor.getEmail());
		if(doctorDetails.isEmpty()) {
		this.doctorRepository.save(doctor);

		
		return "redirect:/viewdoctor";}
		
		else
		{
			model.addAttribute("exist","User already exist");
			return "Doctorregistration";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		session.setAttribute("email", null);
		session.invalidate();
		return "Adminlogin";
	}
	
	
	
	@RequestMapping("/viewdoctor")
	public String viewDoctor(Model model)
	{
		List<Doctor_details> list=(List<Doctor_details>) doctorRepository.findAll();
		model.addAttribute("list",list);
		
		return "view_doctor";
	}
	
		@RequestMapping("/updatedoctor/{id}")
		public String updateDoctor(@PathVariable int id,Model model) {
			
			Doctor_details doctor= doctorRepository.findById(id);
			model.addAttribute("obj",doctor);
			return "Updatedoctordetails";
		}
		
		@RequestMapping("/updated")
		public String update(@ModelAttribute Doctor_details doctordetails)
		{
			doctorRepository.save(doctordetails);
			return "redirect:/viewdoctor";
		}
	
		@GetMapping("/search")
		public String searchDoctor(@RequestParam String search, Model model )
		{
			List<Doctor_details> list=this.doctorRepository.findByFname(search);
			model.addAttribute("list",list);
			return "view_doctor";
		}
		
		@RequestMapping("/viewfeedback")
		public String viewFeedback(Model model)
		{
			List<FeedbackForm> list=(List<FeedbackForm>) this.feedbackRepository.findAll();
			model.addAttribute("list",list);
			return "feedbacktable";
		}
	
}
