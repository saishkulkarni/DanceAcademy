package org.jsp.danceacademy.service;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.jsp.danceacademy.dao.AdminDao;
import org.jsp.danceacademy.dto.Admin;
import org.jsp.danceacademy.dto.Dance;
import org.jsp.danceacademy.helper.Login;
import org.jsp.danceacademy.repository.DanceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Service
public class AdminService {

	@Autowired
	AdminDao adminDao;

	@Autowired
	DanceRepository danceRepository;

	public ModelAndView signup(Admin admin, String date) {
		ModelAndView view = new ModelAndView();

		if (adminDao.findByEmail(admin.getEmail()) == null && adminDao.findByMobile(admin.getMobile()) == null) {
			admin.setDob(LocalDate.parse(date));
			adminDao.signup(admin);
			view.setViewName("/AdminLogin");
			view.addObject("pass", "Account Registered Successfully");
		} else {
			view.setViewName("/AdminRegister");
			view.addObject("fail", "Email or Phone Number already exists");
		}
		return view;

	}

	public ModelAndView login(Login login, HttpSession session) {
		ModelAndView view = new ModelAndView();

		Admin admin = adminDao.findByEmail(login.getEmail());

		if (admin == null) {
			view.setViewName("/AdminLogin");
			view.addObject("fail", "Invalid Email");
		} else {
			if (admin.getPassword().equals(login.getPassword())) {
				session.setAttribute("admin", admin);
				view.setViewName("/AdminHome");
				view.addObject("pass", "Login Success");
			} else {
				view.setViewName("/AdminLogin");
				view.addObject("fail", "Invalid Password");
			}
		}

		return view;
	}

	public ModelAndView addDance(ModelAndView view, Dance dance, MultipartFile pic) throws IOException {

		if (danceRepository.findByFormName(dance.getFormName()) == null) {
			byte[] image = new byte[pic.getInputStream().available()];
			pic.getInputStream().read(image);

			dance.setImage(image);

			danceRepository.save(dance);
			view.setViewName("/AdminHome");
			view.addObject("pass", "Dance form added success");
		} else {
			view.setViewName("/AdminHome");
			view.addObject("fail", "" + dance.getFormName() + " Already Exists");
		}
		return view;

	}

	public ModelAndView viewDance() {
		ModelAndView view = new ModelAndView();

		List<Dance> list = danceRepository.findAll();
		if (list.isEmpty()) {
			view.setViewName("/AdminHome");
			view.addObject("fail", "No Dance FOrms Yet");
		} else {
			view.setViewName("/Cart");
			view.addObject("list", list);
		}
		return view;
	}

	public ModelAndView updateDance(int id, double price) {
		ModelAndView view = new ModelAndView();

		Optional<Dance> op = danceRepository.findById(id);
		if (op.isEmpty()) {
			view.addObject("fail", "Invalid Id");
			view.setViewName("/AdminHome");
		} else {
			Dance dance = op.get();
			dance.setPrice(price);
			danceRepository.save(dance);

			view.addObject("pass", "Price updated Successfully");
			view.setViewName("/AdminHome");
		}

		return view;

	}

	public ModelAndView deleteDance(int id) {
		ModelAndView view = new ModelAndView();

		Optional<Dance> op = danceRepository.findById(id);
		if (op.isEmpty()) {
			view.addObject("fail", "Invalid Id");
			view.setViewName("/AdminHome");
		} else {
			danceRepository.deleteById(id);
			view.addObject("pass", "Dance Deleted Successfully");
			view.setViewName("/AdminHome");

		}

		return view;
	}

}
