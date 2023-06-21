package org.jsp.danceacademy.repository;

import org.jsp.danceacademy.dto.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer> {
	Student findByEmail(String email);

	Student findByMobile(long mobile);
}
