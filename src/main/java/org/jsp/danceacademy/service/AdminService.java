package org.jsp.danceacademy.service;

import java.time.LocalDate;

import org.jsp.danceacademy.dao.AdminDao;
import org.jsp.danceacademy.dto.Admin;
import org.jsp.danceacademy.helper.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Service
public class AdminService {

	@Autowired
	AdminDao adminDao;

	public ModelAndView signup(Admin admin, String date) {
		ModelAndView view = new ModelAndView();

		admin.setDob(LocalDate.parse(date));
		adminDao.signup(admin);
		view.setViewName("/AdminLogin.jsp");
		view.addObject("pass", "Account Registered Successfully");

		return view;

	}

	public ModelAndView login(Login login, HttpSession session) {
		ModelAndView view=new ModelAndView();
		
		Admin admin=adminDao.findByEmail(login.getEmail());
		
		
		return view;
	}

}
