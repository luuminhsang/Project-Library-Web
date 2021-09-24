package com.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.dto.FormChangePassword;
import com.dto.FormUploadMedia;
import com.iservice.IPosterService;
import com.iservice.IUserService;
import com.iservice.IViewerService;
import com.models.User;
import com.models.UserPoster;
import com.models.UserRoles;
import com.models.UserViewer;

@RestController(value = "viewer")
public class ViewerController {

	@Autowired
	private IViewerService viewerService;

	@Autowired
	private IUserService userService;

	@Autowired
	private IPosterService posterService;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpServletResponse response;

	@GetMapping(value = "/moreViews")
	public ModelAndView moreViews(@RequestParam(value = "views", required = false) Integer views,
			@RequestParam(value = "error", required = false, defaultValue = "false") Boolean error,
			Authentication authentication, RedirectAttributes redirectAttributes,
			@ModelAttribute("formChangePassword") FormChangePassword form, @ModelAttribute("uploadMedia") FormUploadMedia media) {
		ModelAndView mav = new ModelAndView(new RedirectView("/manage"));
		if (error == true) {
			redirectAttributes.addFlashAttribute("message", "Payment error");
			return mav;
		}
		User user = userService.findByUsername(authentication.getName());
		UserViewer viewer = viewerService.findByUser(user);
		int numberViews = viewer.getMaxView() + 20;
		viewer.setMaxView(numberViews);
		viewerService.update(viewer);

		redirectAttributes.addFlashAttribute("message", "Buy downloads success");
		return mav;
	}

	@GetMapping(value = "/upgradePoster")
	public ModelAndView upgradeAccount(
			@RequestParam(value = "error", required = false, defaultValue = "false") Boolean error,
			@RequestParam(value = "accountNumber", required = false) String accountNumber,
			Authentication authentication, RedirectAttributes redirectAttributes,
			@ModelAttribute("uploadMedia") FormUploadMedia media) {
		ModelAndView mav = new ModelAndView(new RedirectView("/login"));
		if (error) {
			redirectAttributes.addFlashAttribute("message", "Upgrade failed");
			return mav;
		}
		User user = userService.findByUsername(authentication.getName());
		user.setUserRole(UserRoles.ROLE_POSTER);
		userService.update(user);
		UserPoster userPoster = posterService.findByUser(user);
		LocalDate expirationDate = LocalDate.now().plusMonths(1);
		if (userPoster == null) {
			UserPoster poster = new UserPoster(accountNumber, true, expirationDate, user);
			posterService.save(poster);
		} else {
			userPoster.setExpirationDate(expirationDate);
			posterService.save(userPoster);
		}
		new SecurityContextLogoutHandler().logout(request, response, authentication);
		redirectAttributes.addFlashAttribute("message", "Upgraded successful. Please login.!!!");
		return mav;

	}
}
