package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	List<User> findAllByOrderByIdDesc();

	User findByemail(String email);

	List<User> findAll();

	User findByUserName(String username);

}
