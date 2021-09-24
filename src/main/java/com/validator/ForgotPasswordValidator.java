package com.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.iservice.IUserService;
import com.models.User;

@Component
public class ForgotPasswordValidator implements Validator {

	@Autowired
	private IUserService userService;

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		User userSubmit = (User) target;
		User user = userService.findByEmail(userSubmit.getEmail());
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
		if (user == null) {
			errors.rejectValue("email", "Notfound.formForgotPassword.email");
		}

	}

}
