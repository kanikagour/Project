package com.college.election.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.election.entities.User;
import com.college.election.repos.ElectionRepository;
/* Here we are creating an controller for user to login  */
@Controller
public class UserloginController {
	// Here we are creating an object for the ElectionRepository interface and we are autowiring. 	
	@Autowired
	private ElectionRepository userRepo; 
// this method is used to show login page when we call in server.
	@RequestMapping("/user")
	public String showpage()
	{
		return "User/UserLogin";
		
	}
// Here we are getting the value from the fields present in the page and validating them with data present according to the register number of user. 	
	@PostMapping("/UserLogin")
	public String login(@RequestParam("registerno")int registerno,@RequestParam("password")String password,ModelMap modelMap)
	{
		User user=userRepo.findByRegisterno(registerno);
		if(user!=null&&user.getPassword().equals(password))
		{
			return "User/UserDashboard";
		}
		else
		{
			modelMap.addAttribute("msg","You need to give a correct Password");
			return "User/UserLogin";
		}
	}

}
