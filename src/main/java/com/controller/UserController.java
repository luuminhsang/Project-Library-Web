package com.controller;

import java.io.IOException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.dto.FormChangePassword;
import com.dto.FormUploadMedia;
import com.dto.UserDTO;
import com.iservice.IAdminService;
import com.iservice.IUserService;
import com.iservice.IViewerService;
import com.models.Media;
import com.models.User;
import com.models.UserAdmin;
import com.models.UserRoles;
import com.models.UserViewer;
import com.validator.ForgotPasswordValidator;
import com.validator.RegisterValidator;

@RestController(value = "users")
public class UserController {

	@Autowired
	private IUserService userService;

	@Autowired
	private IViewerService viewerService;

	@Autowired
	private IAdminService adminService;

	@Autowired
	private RegisterValidator registerValidator;

	@Autowired
	private ForgotPasswordValidator forgotPasswordValidator;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@GetMapping(value = "/register")
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("formRegister", new UserDTO());
		return mav;
	}

	@PostMapping(value = "/register")
	public Object register(@ModelAttribute("formRegister") UserDTO form, BindingResult bindingResult,
			RedirectAttributes attributes) {
		registerValidator.validate(form, bindingResult);

		if (bindingResult.hasErrors()) {
			return new ModelAndView("/register");
		}

		User user = new User(form.getUserName(), form.getPassword(), form.getEmail(), form.getFullName(),
				UserRoles.ROLE_VIEWER);
		userService.register(user);
		UserViewer viewer = new UserViewer(user);
		viewerService.save(viewer);
		attributes.addFlashAttribute("message", "Register success");
		return new RedirectView("/login");

	}

	@GetMapping(value = "/login")
	public ModelAndView login(@RequestParam(value = "error", required = false, defaultValue = "false") Boolean error,
			@RequestParam(value = "denied", required = false, defaultValue = "false") Boolean denied,
			RedirectAttributes redirectAttributes) {
		ModelAndView mav = new ModelAndView("login");
		if (error) {
			mav = new ModelAndView(new RedirectView("/login"));
			redirectAttributes.addFlashAttribute("error", "Username or password are incorrect");
			return mav;
		}
		if (denied) {
			mav = new ModelAndView(new RedirectView("/login"));
			redirectAttributes.addFlashAttribute("error", "Unauthencation");
			return mav;
		}
		User user = userService.findByUsername("admin");
		if (user == null) {
			User admin = new User("admin", "123123", "admin@gmail.com", "Master admin", UserRoles.ROLE_ADMIN);
			userService.register(admin);
			UserAdmin userAdmin = new UserAdmin(admin);
			adminService.save(userAdmin);
		}
		return mav;
	}

	@GetMapping(value = "forgot-password")
	public ModelAndView forgotPassword(@ModelAttribute("formForgotPassword") User email) {
		ModelAndView mav = new ModelAndView("forgot-password");
		return mav;
	}

	@PostMapping(value = "/forgot-password")
	public ModelAndView forgotPassword(@ModelAttribute("formForgotPassword") User user, BindingResult bindingResult)
			throws MessagingException, IOException {
		ModelAndView mav = new ModelAndView();
		forgotPasswordValidator.validate(user, bindingResult);
		if (bindingResult.hasErrors()) {
			mav.setViewName("forgot-password");
		} else {
			String password = userService.generatePassword();
			User u = userService.findByEmail(user.getEmail());
			User updateUser = new User(u.getId(), u.getUserName(), bCryptPasswordEncoder.encode(password), u.getEmail(),
					u.getFullName(), u.getUserRole());
			userService.update(updateUser);
			userService.sendMail(user.getEmail(), "Confirm password",
					"Your password:" + password + "<br> Please change password when login!");
			mav.setViewName("forgot-password");
			mav.addObject("message", "Please check your email to confirm your password");
		}
		return mav;
	}

	@PostMapping("/change-password")
	public ModelAndView changePassword(@ModelAttribute("formChangePassword") FormChangePassword form,
			Authentication auth, RedirectAttributes redirectAttributes,
			@ModelAttribute("uploadMedia") FormUploadMedia media) {
		ModelAndView mav = new ModelAndView(new RedirectView("/manage"));
		User user = userService.findByUsername(auth.getName());
		user.setPassword(bCryptPasswordEncoder.encode(form.getNewPassword()));
		userService.update(user);
		redirectAttributes.addFlashAttribute("message", "Change password successfull");
		return mav;
	}

	@GetMapping("/validate-email")
	public boolean validateEmail(@RequestParam("email") String email) {
		User u = userService.findByEmail(email);
		if (u != null) {
			return true;
		}
		return false;
	}

	@GetMapping("/validate-login")
	public boolean validateLogin(@RequestParam("userName") String userName, @RequestParam("password") String password) {
		User u = userService.findByUsername(userName);
		if (u != null) {
			if (bCryptPasswordEncoder.matches(password, u.getPassword())) {
				return true;
			}
		}
		return false;
	}

	@GetMapping("/validate-password")
	public boolean validatePassword(@RequestParam("password") String password, Authentication auth) {
		User u = userService.findByUsername(auth.getName());
		if (u != null) {
			if (bCryptPasswordEncoder.matches(password, u.getPassword())) {
				return true;
			}
		}
		return false;
	}


	@GetMapping("/validate-confirm-password")
	public boolean validateConfirmPassword(@RequestParam("newPassword") String password,
			@RequestParam("confirmPassword") String confirmPassword) {
		if (password.equals(confirmPassword)) {
			return true;
		}
		return false;
	}

	@GetMapping("/validate-username")
	public boolean validateUsername(@RequestParam("userName") String userName) {
		User u = userService.findByUsername(userName);
		if (u != null) {
			return true;
		}
		return false;
	}

}
