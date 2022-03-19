package com.myapp.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.myapp.dao.BookAppointment_Repository;
import com.myapp.dao.Doctor_repository;
import com.myapp.dao.Feedback_repository;
import com.myapp.dao.Patient_repository;
import com.myapp.model.BookAppointment;
import com.myapp.model.DoctorAppointment;
import com.myapp.model.Doctor_details;
import com.myapp.model.FeedbackForm;
import com.myapp.model.Patient_details;
import com.myapp.model.Patient_login;

@Controller
public class PatientController {

	@Autowired
	private Patient_repository patientrepository;
	@Autowired
	private Doctor_repository doctorrepository;
	@Autowired
	private Feedback_repository feedbackrepository;
	@Autowired
	private BookAppointment_Repository repository;

	@RequestMapping("/home")
	public String homePagepatient() {
		return "Homepage";
	}

	@RequestMapping("/patientform")
	public String patientForm() {
		return "Patientregistration";
	}

	@PostMapping("/patientregistration")
	public String patientRegistration(@ModelAttribute Patient_details patientDetails, Model model) {
		List<Patient_details> patientdetails = patientrepository.findByemail(patientDetails.getEmail());
		if (patientdetails.isEmpty()) {
			this.patientrepository.save(patientDetails);
			return "Homepage";
		} else {
			model.addAttribute("exist", "User already exist");
			return "Patientregistration";
		}
	}

	@RequestMapping("/appointmentpage")
	public String AppointmentPage() {
		return "Appintmentpage";
	}

	@RequestMapping("/plogin")
	public String patientLogin() {
		return "Patientlogin";
	}

	@RequestMapping(path = "/patientlogin", method = RequestMethod.POST)
	public String Getinto(@ModelAttribute Patient_login patientlogin, Model model, HttpSession session) {

		List<Patient_details> s = this.patientrepository.findByEmailAndPassword(patientlogin.getEmail(),
				patientlogin.getPassword());

		if (s.isEmpty()) {
			model.addAttribute("valid", "Incorrect username or password");
			return "Patientlogin";
		}

		else {
			session.setAttribute("email", patientlogin.getEmail());
			return "Appintmentpage";
		}

	}

	@RequestMapping("/doctordetails")
	public String doctorDetails(Model model) {
		List<Doctor_details> list = (List<Doctor_details>) this.doctorrepository.findAll();
		model.addAttribute("list", list);
		return "Doctordetails";
	}

	@GetMapping("/searchdetails")
	public String searchdoctor(@RequestParam int search, Model model) {
		List<Doctor_details> list = this.doctorrepository.findByZipcode(search);
		model.addAttribute("list", list);
		return "Doctordetails";
	}

	@RequestMapping("/bookappointment/{id}")
	public String bookAppointment(@PathVariable("id") int id, @RequestParam("slot") String time,
			@RequestParam("date") String date, HttpSession session,Model model) {
		Date date1 = null;
		try {
			date1 = new SimpleDateFormat("yyyy-MM-dd").parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		List<BookAppointment> appointments = new ArrayList<>();
		BookAppointment appointment = new BookAppointment();

		appointment.setDate(date1);
		appointment.setTime(time);

		appointments.add(appointment);

		Doctor_details doctor = doctorrepository.findById(id);
		doctor.setAppointments(appointments);
		String Email = (String) session.getAttribute("email");

		Patient_details patient = patientrepository.findByemail(Email).get(0);
		patient.addAppointment(appointment);
		appointment.setPatient(patient);
		patientrepository.save(patient);
		doctorrepository.save(doctor);

		model.addAttribute("message","Appointment Booked :)");
		
		return "redirect:/doctordetails";
	}

	@RequestMapping("/appointmentstatus")
	public String appointmentStatus(Model model) {

		List<Doctor_details> list = (List<Doctor_details>) doctorrepository.findAll();
		List<DoctorAppointment> doctorAppointments = new ArrayList<DoctorAppointment>();
		for (Doctor_details doctor_details : list) {
			

			List<BookAppointment> appointments = doctor_details.getAppointments();

			System.out.println(appointments);
			for (BookAppointment appointment : appointments) {
				DoctorAppointment docappointment = new DoctorAppointment();
				docappointment.setId(appointment.getId());
				docappointment.setFname(doctor_details.getFname());
				docappointment.setLname(doctor_details.getLname());
				docappointment.setTime(appointment.getTime());
				docappointment.setDate(appointment.getDate());
				doctorAppointments.add(docappointment);

			}
		}

		model.addAttribute("list", doctorAppointments);

		return "Appointmentstatus";
	}

	@RequestMapping("/deleteapp/{id}")
	public String delete(@PathVariable int id) {
	Optional<BookAppointment> appointmentOptional=repository.findById(id);
	BookAppointment appointment=appointmentOptional.get();
	repository.delete(appointment);
		return "redirect:/appointmentstatus";
	}

	@RequestMapping("/feedback")
	public String feedbackForm() {
		return "Feedback";
	}

	@RequestMapping("/submitfeedback")
	public String submitFeedback(@ModelAttribute FeedbackForm feedbackform) {
		feedbackrepository.save(feedbackform);
		return "Appintmentpage";
	}

	@RequestMapping("/patientlogout")
	public String patientLogout(HttpSession session) {
		session.setAttribute("email", null);
		session.invalidate();
		return "Patientlogin";
	}
}
