package org.jsp.danceacademy.controller;

import java.io.IOException;

import org.jsp.danceacademy.dto.Admin;
import org.jsp.danceacademy.dto.Dance;
import org.jsp.danceacademy.helper.Login;
import org.jsp.danceacademy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;

	@GetMapping("/")
	public ModelAndView homePage(ModelAndView view) {
		view.setViewName("/Home");
		return view;
	}

	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session, ModelAndView view) {
		session.invalidate();
		view.setViewName("/Home");
		view.addObject("pass", "Logout Success");
		return view;
	}

	@PostMapping("/admin/signup")
	public ModelAndView signup(@ModelAttribute Admin admin, @RequestParam String date) {
		return adminService.signup(admin, date);
	}

	@PostMapping("/admin/login")
	public ModelAndView signup(@ModelAttribute Login login, HttpSession session) {
		return adminService.login(login, session);
	}
	
	@PostMapping("/admin/dance")
	public ModelAndView insertDance(ModelAndView view,@ModelAttribute Dance dance,@RequestParam MultipartFile pic) throws IOException
	{
		 return adminService.addDance(view,dance,pic);
	}
	
	@GetMapping("/admin/viewdance")
	public ModelAndView viewDance()
	{
		return adminService.viewDance();
	}
	
	@PostMapping("/admin/dance/update")
	public ModelAndView updateDance(@RequestParam int id,@RequestParam double price)
	{
		return adminService.updateDance(id,price);
	}
	
	@PostMapping("/admin/dance/delete")
	public ModelAndView deleteDance(@RequestParam int id)
	{
		return adminService.deleteDance(id);
	}
	
}
