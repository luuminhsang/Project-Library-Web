package com.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.iservice.IUserService;
import com.models.User;

@Component
public class LoginValidator implements Validator {

	@Autowired
	private IUserService userService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		User username = userService.findByUsername(user.getUserName());

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "NotEmpty");
		if (username == null) {
			errors.rejectValue("userName", "Notfound.formLogin.userName");
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
		if (username != null && !bCryptPasswordEncoder.matches(user.getPassword(), username.getPassword())) {
			errors.rejectValue("password", "Notfound.formLogin.password");
		}
	}

}
