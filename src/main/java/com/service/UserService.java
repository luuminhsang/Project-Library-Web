package com.service;

import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.iservice.IUserService;
import com.models.Media;
import com.models.User;
import com.repository.UserRepository;

@Service
public class UserService implements IUserService, UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	private JavaMailSender javaMailSender;

	@Override
	public List<User> listAll() {
		List<User> user = userRepository.findAllByOrderByIdDesc();
		return user;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUserName(username);
		if (user == null) {
			throw new UsernameNotFoundException("User: " + username + " does not exist");
		} else {
		}
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		grantedAuthorities.add(new SimpleGrantedAuthority(String.valueOf(user.getUserRole())));

		return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(),
				grantedAuthorities);
	}

	@Override
	public void register(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		userRepository.save(user);
	}

	@Override
	public User findByUsername(String username) {
		User findByUser=  userRepository.findByUserName(username);
		return findByUser;
	}	
	

	@Override
	public String generatePassword() {
		String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		StringBuilder salt = new StringBuilder();
		Random rnd = new Random();
		while (salt.length() < 8) {
			int index = (int) (rnd.nextFloat() * SALTCHARS.length());
			salt.append(SALTCHARS.charAt(index));
		}
		String password = salt.toString();
		return password;
	}

	@Override
	public void sendMail(String to, String subject, String content) {
		try {
			MimeMessage msg = javaMailSender.createMimeMessage();

			MimeMessageHelper helper = new MimeMessageHelper(msg, true);
			helper.setTo(to);

			helper.setSubject(subject);

			helper.setText("<h1>" + content + "</h1>", true);

			javaMailSender.send(msg);
		} catch (Exception e) {
			System.out.println("Error send mail");
		}
	}

	@Override
	public User findByEmail(String email) {
		return userRepository.findByemail(email);
	}

	@Override
	public void update(User user) {
		userRepository.save(user);
	}
//
//	@Override
//	public User findById(long id) {
//		User userById = userRepository.findById(id);
//		return userById;
//	}

	@Override
	public List<User> findAll() {
		List<User> listAll =  userRepository.findAll();
		return listAll;
	}
	
}
