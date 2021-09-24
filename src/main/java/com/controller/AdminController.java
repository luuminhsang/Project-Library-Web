package com.controller;

import javax.validation.constraints.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.iservice.IAdminService;
import com.iservice.IMediaService;
import com.models.Media;
import com.models.User;
import com.service.UserService;

@RestController(value = "admin")
public class AdminController {
	
	@GetMapping(value = "/dashboard")
	public ModelAndView dashboard() {
		ModelAndView mav = new ModelAndView("admin/dashboard");
		return mav;
	}
    @Autowired
    private IAdminService adminService;
    	
	@GetMapping(value = "/statistics")
	public ModelAndView statistics() {
		ModelAndView mav = new ModelAndView("admin/statistics");
		return mav;
	}
	
	
}
