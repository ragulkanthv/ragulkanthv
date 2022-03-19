package com.myapp;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.List;
import java.util.stream.Collectors;

import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.annotation.Rollback;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.myapp.controller.AdminController;
import com.myapp.controller.PatientController;
import com.myapp.dao.Admin_repository;
import com.myapp.dao.Doctor_repository;
import com.myapp.dao.Feedback_repository;
import com.myapp.model.Admin_Model;
import com.myapp.model.Doctor_details;
import com.myapp.model.FeedbackForm;
import com.myapp.service.AdminService;
import com.sun.el.stream.Stream;

@SpringBootTest
class YourDrJustAClickAwayApplicationTests {

	@Autowired
	private AdminController adminController;
	@Autowired
	private Admin_repository adminRepository;
	@Autowired
	private PatientController patientController;
	@Autowired
	private Feedback_repository feedbackRepository;
	@Autowired
	private Doctor_repository doctorRepository;
	
	
	@Test
	@Order(1)
	public void homePage() {
		
	assertEquals("Homepage", adminController.homePage());
	}
	  
	@Test
	@Order(2)
	public void adminForm() {
		
	assertEquals("Adminregistrationjsp", adminController.adminForm());
	}

	@Test
	@Order(3)
	public void adminloginFor() {
		
	assertEquals("Adminlogin", adminController.adminloginForm());
	}
	
	@Test
	@Order(4)
	public void doctorRegistration() {
		
	assertEquals("Doctorregistration", adminController.doctorRegistration());
	}

	@Test
	@Order(5)
	public void homePagePatient() {
		
	assertEquals("Homepage", patientController.homePagepatient());
	}
	
	@Test
	@Order(6)
	public void patientForm() {
		
	assertEquals("Patientregistration", patientController.patientForm());
	}
	
	@Test
	@Order(7)
	public void AppointmentPage() {
		
	assertEquals("Appintmentpage", patientController.AppointmentPage());
	}
	
	
	@Test
	@Order(8)
	public void feedbackForm() {
		
	assertEquals("Feedback", patientController.feedbackForm());
	}
	
	@Test
    @Order(9)
    public void viewDoctor() {
        List<Admin_Model> users = (List<Admin_Model>) adminRepository.findAll();
        assertThat(users).size().isGreaterThan(0);
    }
	
	@Test
    @Order(13)
    public void viewFeedback() {
		List<FeedbackForm> list=(List<FeedbackForm>) this.feedbackRepository.findAll();
        assertThat(list).size().isGreaterThan(0);
    }
	
	
	@Test
    @Order(11)
    public void searchDoctor() {
		List<Doctor_details> list=this.doctorRepository.findByFname("Amit");
         assertThat(list).size().isGreaterThan(0);
    }
	
	
	@Test
    @Order(12)
    public void searchdoctor() {
		List<Doctor_details> list = this.doctorRepository.findByZipcode(641013);
         assertThat(list).size().isGreaterThan(0);
    }
	
	@Test
    @Rollback(true)
    @Order(10)
    public void submitFeedback() {
        FeedbackForm feedback = feedbackRepository.save(new FeedbackForm(1,"Good"));
         
        assertThat(feedback.getId()).isGreaterThan(0);
    }
	
	
	
}
