package org.jsp.danceacademy.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.jsp.danceacademy.dao.StudentDao;
import org.jsp.danceacademy.dto.Dance;
import org.jsp.danceacademy.dto.Student;
import org.jsp.danceacademy.helper.Login;
import org.jsp.danceacademy.repository.DanceRepository;
import org.jsp.danceacademy.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Service
public class StudentService {

	@Autowired
	StudentDao studentDao;

	@Autowired
	DanceRepository danceRepository;

	@Autowired
	StudentRepository studentRepository;

	public ModelAndView signup(Student student, String date) {
		ModelAndView view = new ModelAndView();
		if (studentDao.findByEmail(student.getEmail()) == null
				&& studentDao.findByMobile(student.getMobile()) == null) {
			student.setDob(LocalDate.parse(date));
			studentDao.signup(student);
			view.setViewName("/Home");
			view.addObject("pass", "Account Registered Successfully");
		} else {
			view.setViewName("/StudentRegister");
			view.addObject("fail", "Email or Phone Number already exists");
		}
		return view;

	}

	public ModelAndView login(Login login, HttpSession session) {
		ModelAndView view = new ModelAndView();

		Student student = studentDao.findByEmail(login.getEmail());

		if (student == null) {
			view.setViewName("/StudentLogin");
			view.addObject("fail", "Invalid Email");
		} else {
			if (student.getPassword().equals(login.getPassword())) {
				session.setAttribute("student", student);
				view.setViewName("/Home");
				view.addObject("pass", "Login Success");
			} else {
				view.setViewName("/StudentLogin");
				view.addObject("fail", "Invalid Password");
			}
		}

		return view;
	}

	public ModelAndView addDance(String name, HttpSession session) {
		ModelAndView view = new ModelAndView();

		Student student = (Student) session.getAttribute("student");
		if (student == null) {
			view.setViewName("/Home");
			view.addObject("fail", "First Login to Enroll");
		} else {
			Dance dance = danceRepository.findByFormName(name);
			System.out.println(dance);
			if (dance == null) {
				view.addObject("fail", "Yet to Add the course");
				view.setViewName("/Home");
			} else {
				List<String> list = student.getDanceName();
				if (list == null) {
					list = new ArrayList<>();
				}
				list.add(dance.getFormName());

				student.setDanceName(list);
				studentDao.signup(student);

				view.setViewName("/Home");
				view.addObject("pass", "Added Successfully");
			}
		}
		return view;
	}

	public ModelAndView viewDance(int id) {
		ModelAndView view = new ModelAndView();
		Optional<Student> optional = studentRepository.findById(id);
		List<String> list = optional.get().getDanceName();
		if (list == null) {
			view.addObject("fail", "Not Yet Enrolled for Courses");
			view.setViewName("/Home");
		} else {
			view.addObject("list", list);
			view.setViewName("/StudentDance");
		}
		return view;
	}
}
