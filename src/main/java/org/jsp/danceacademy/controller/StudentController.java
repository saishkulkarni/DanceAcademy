package org.jsp.danceacademy.controller;

import org.jsp.danceacademy.dto.Student;
import org.jsp.danceacademy.helper.Login;
import org.jsp.danceacademy.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

	@Autowired
	StudentService studentService;

	@PostMapping("/student/signup")
	public ModelAndView signup(@ModelAttribute Student student, @RequestParam String date) {
		return studentService.signup(student, date);
	}

	@PostMapping("/student/login")
	public ModelAndView signup(@ModelAttribute Login login, HttpSession session) {
		return studentService.login(login, session);
	}

	@GetMapping("/bookdance")
	public ModelAndView addDance(@RequestParam String name, HttpSession session) {
		return studentService.addDance(name,session);
	}
	
	@GetMapping("/student/dance")
	public ModelAndView viewDance(@RequestParam int id)
	{
		return studentService.viewDance(id);
	}
}
