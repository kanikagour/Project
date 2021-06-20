package com.college.election.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.election.entities.User;
import com.college.election.repos.ElectionRepository;

/* Here we are creating an controller for registration */
@Controller
public class RegistrationController {
	// Here we are creating an object for the ElectionRepository interface and we are autowiring. 	
	@Autowired
	private ElectionRepository userRepo; 
	// this method is used to show registration page when we call in server.
	@RequestMapping("/Registration")
	public String showRegistration()
	{
		return "Registration";
		
	}
	// Here we are getting the value from the fields present in the page and storing them into the database. 	
	@PostMapping("/registration")
	public String Registration(@RequestParam("name")String name,@RequestParam("registerno")int registerno,@RequestParam("email")String email,@RequestParam("gender")String gender,@RequestParam("depa")String depa,@RequestParam("password")String password,@RequestParam("squestions")String squestions,@RequestParam("sanswers")String sanswers,ModelMap modelMap)
	{
		User user=new User();
		user.setName(name);
		user.setRegisterno(registerno);
		user.setEmail(email);
		user.setGender(gender);
		user.setDepartment(depa);
		user.setPassword(password);
		user.setSquestions(squestions);
		user.setSanswers(sanswers);
		userRepo.save(user);
		
		modelMap.addAttribute("reg", "Registration Successfull");
		return "Registration";
		
	}

}
