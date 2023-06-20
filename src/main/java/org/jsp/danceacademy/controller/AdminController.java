package org.jsp.danceacademy.controller;

import org.jsp.danceacademy.dto.Admin;
import org.jsp.danceacademy.helper.Login;
import org.jsp.danceacademy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	AdminService adminService;

	@PostMapping("signup")
	public ModelAndView signup(@ModelAttribute Admin admin, @RequestParam String date) {
		return adminService.signup(admin, date);
	}

	@PostMapping("login")
	public ModelAndView signup(@ModelAttribute Login login, HttpSession session) {
		return adminService.login(login, session);
	}

}
