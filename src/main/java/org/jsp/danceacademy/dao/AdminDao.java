package org.jsp.danceacademy.dao;

import org.jsp.danceacademy.dto.Admin;
import org.jsp.danceacademy.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {

	@Autowired
	AdminRepository adminRepository;

	public void signup(Admin admin) {
		adminRepository.save(admin);
	}

	public Admin findByEmail(String email) {
		return adminRepository.findByEmail(email);
	}

	public Admin findByMobile(long mobile) {
		return adminRepository.findByMobile(mobile);
	}
}
