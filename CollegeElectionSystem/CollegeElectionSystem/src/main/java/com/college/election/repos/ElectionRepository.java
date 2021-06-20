package com.college.election.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.college.election.entities.User;

public interface ElectionRepository extends JpaRepository<User, Integer> {

	User findByEmail(String email);
	User findByRegisterno(int registerno);

}
