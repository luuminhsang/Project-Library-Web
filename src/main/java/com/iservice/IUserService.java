package com.iservice;

import java.util.List;

import com.models.User;

public interface IUserService {
	List<User> listAll();

	void register(User user);

	void update(User user);

	User findByUsername(String username);

	User findByEmail(String email);

	String generatePassword();

	void sendMail(String to, String subject, String content);

	List<User> findAll();




}
