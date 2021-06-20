package com.college.election.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserDashboardController {
	@RequestMapping("/CandidateRegistration")
	public String showcandidateregistration()
	{
		return "User/CandidateRegistration";
		
	}
	@RequestMapping("/ViewCandidates")
	public String showviewcandidates()
	{
		return "User/ViewCandidates";
		
	}
	@RequestMapping("/VotersPortal")
	public String showvotersportal()
	{
		return "User/VotersPortal";
		
	}
	@RequestMapping("/Result")
	public String showresults()
	{
		return "Result";
		
	}
	@RequestMapping("/Logout")
	public String logout(HttpServletRequest request)
	{
		request.getSession().invalidate();
		return "User/UserLogin";
	}




}
