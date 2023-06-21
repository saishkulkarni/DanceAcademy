package org.jsp.danceacademy.repository;

import org.jsp.danceacademy.dto.Dance;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DanceRepository extends JpaRepository<Dance, Integer>
{
Dance findByFormName(String name);
}
