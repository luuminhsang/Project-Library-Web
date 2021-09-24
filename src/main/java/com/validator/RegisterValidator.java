package com.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.dto.UserDTO;
import com.iservice.IUserService;
import com.models.User;

@Component
public class RegisterValidator implements Validator {

	@Autowired
	private IUserService userService;

	@Override
	public boolean supports(Class<?> clazz) {
		return UserDTO.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		UserDTO user = (UserDTO) target;
		User email = userService.findByEmail(user.getEmail());
		User username = userService.findByUsername(user.getUserName());

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
		if (email != null) {
			errors.rejectValue("email", "Duplicate.formRegister.email");
		}

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "NotEmpty");
		if (user.getUserName().length() < 6 || user.getUserName().length() > 32) {
			errors.rejectValue("userName", "Size.formRegister.userName");
		} else if (username != null) {
			errors.rejectValue("userName", "Duplicate.formRegister.userName");
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
		if (user.getPassword().length() < 6 || user.getPassword().length() > 32) {
			errors.rejectValue("password", "Size.formRegister.password");
		} else if (!user.getConfirmPassword().equals(user.getPassword())) {
			errors.rejectValue("password", "Diff.formRegister.confirmPassword");
		}
	}

	public boolean checkEmail(String email) {
		User user = userService.findByEmail(email);
		if (user != null) {
			return true;
		}
		return false;
	}

	public boolean checkUser(String username) {
		User user = userService.findByUsername(username);
		if (user != null) {
			return true;
		}
		return false;
	}
}
