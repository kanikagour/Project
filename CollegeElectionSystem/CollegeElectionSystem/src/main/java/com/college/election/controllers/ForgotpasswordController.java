package com.college.election.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.college.election.entities.User;
import com.college.election.repos.ElectionRepository;

@Controller
public class ForgotpasswordController {
	
	@Autowired
	private ElectionRepository userRepo; 
	private User user;
	//Here it is showing the forgot password page.
	@RequestMapping("/Forgotpassword")
	public String showforgotpassword()
	{
		return "Forgotpassword";
		
	}
	//Here we are fetching the register number form the jsp page and validating that it is equal to the value present in the database. 
	@PostMapping("/ForgotpasswordO")
	public String Forgotpassword(@RequestParam("registerno") int registerno,ModelMap modelMap)
	{
		user=userRepo.findByRegisterno(registerno);
		if(user.getRegisterno()==registerno)
		{
			 modelMap.addAttribute("que",user.getSquestions());
			return "Authentication";
		}
		else
		{
			return "Forgotpassword";
		}

	}
	//Here we are fetching the register number form the jsp page and validating that it is equal to the value present in the database. 
	@PostMapping("/Authentication")
	public String Authentication(@RequestParam("sanswers") String sanswers)
	{
		
		   if(user.getSanswers().equals(sanswers))
		    {
			  return "ChangePassword";
		    }
		  else
		   {
			return "Authentication";
           }	
	}
	//Here we are fetching the register number form the jsp page and updating the new vales into the database. 	
	@RequestMapping("/Changepassword")
	public String Changepassword(@RequestParam("newPassword") String newPassword,@RequestParam("conPassword")String conPassword)
	{
		if(newPassword.equals(conPassword))
		{
			user.setPassword(conPassword);
			userRepo.save(user);
			return "User/UserLogin";
		}
		else
		{
		  return "Changepassword";
		}
	}
	

}
