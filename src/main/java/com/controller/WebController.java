package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dto.FormChangePassword;
import com.dto.FormUploadMedia;
import com.dto.UserInformation;
import com.iservice.ICategoryService;
import com.iservice.IMediaService;
import com.iservice.IPosterService;
import com.iservice.IUserService;
import com.iservice.IViewerService;
import com.models.Category;
import com.models.Media;
import com.models.User;
import com.models.UserPoster;
import com.models.UserRoles;
import com.models.UserViewer;

@RestController(value = "web")
public class WebController {

	@Autowired
	private ICategoryService categoryService;
	
	@Autowired
	private IMediaService mediaService;

	@Autowired
	private IUserService userService;

	@Autowired
	private IViewerService viewerService;

	@Autowired
	private IPosterService posterService;

	@GetMapping(value = "/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	@GetMapping(value = "/home")
	public ModelAndView home(HttpServletRequest request) {
		request.setAttribute("home", "active");
		/*
		 * List<Category> categories = categoryService.findAll(); if
		 * (categories.isEmpty()) { Category c1 = new Category("Literary"); Category c2
		 * = new Category("Economy"); Category c3 = new Category("Education"); Category
		 * c4 = new Category("Sword hero"); Category c5 = new Category("Comic");
		 * Category c6 = new Category("Cultural"); Category c7 = new Category("Novel");
		 * Category c8 = new Category("Children"); Category c9 = new
		 * Category("Politic"); Category c10 = new Category("Romantics"); List<Category>
		 * listCategory = new ArrayList<Category>(); listCategory.add(c1);
		 * listCategory.add(c2); listCategory.add(c3); listCategory.add(c4);
		 * listCategory.add(c5); listCategory.add(c6); listCategory.add(c7);
		 * listCategory.add(c8); listCategory.add(c9); listCategory.add(c10);
		 * categoryService.saveAll(listCategory); }
		 */
		List<Category> listCategories = categoryService.findAll();
		List<Media> listMedia = mediaService.findByAll();
		request.setAttribute("categories", listCategories);
		request.setAttribute("listMedia", listMedia);
		ModelAndView mav = new ModelAndView("web/home");
		
		return mav;
	}

	@GetMapping(value = "/book")
	public ModelAndView book(HttpServletRequest request) {
		request.setAttribute("book", "active");
		List<Category> categories = categoryService.findAll();
		if (categories.isEmpty()) {
			Category c1 = new Category("Literary");
			Category c2 = new Category("Economy");
			Category c3 = new Category("Education");
			Category c4 = new Category("Sword hero");
			Category c5 = new Category("Comic");
			Category c6 = new Category("Cultural");
			Category c7 = new Category("Novel");
			Category c8 = new Category("Children");
			Category c9 = new Category("Politic");
			Category c10 = new Category("Romantics");
			List<Category> listCategory = new ArrayList<Category>();
			listCategory.add(c1);
			listCategory.add(c2);
			listCategory.add(c3);
			listCategory.add(c4);
			listCategory.add(c5);
			listCategory.add(c6);
			listCategory.add(c7);
			listCategory.add(c8);
			listCategory.add(c9);
			listCategory.add(c10);
			categoryService.saveAll(listCategory);
		}
		List<Category> listCategories = categoryService.findAll();
		List<Media> listMedia = mediaService.findByAll();
		request.setAttribute("categories", listCategories);
		request.setAttribute("listMedia", listMedia);
		ModelAndView mav = new ModelAndView("web/book");
		return mav;
	}
	@GetMapping(value = "/table")
	public ModelAndView table(HttpServletRequest request) {
		List<User> listUser = userService.findAll();
		request.setAttribute("user", listUser);
		ModelAndView mav = new ModelAndView("admin/table");
		return mav;
	}
	@GetMapping(value = "/table2")
	public ModelAndView table2(HttpServletRequest request) {
		List<Media> listMedia = mediaService.findByAll(); //
		request.setAttribute("listMedia", listMedia); //
		ModelAndView mav = new ModelAndView("admin/table2");
		return mav;
	}
	

	@GetMapping(value = "/video")
	public ModelAndView video(HttpServletRequest request) {
		request.setAttribute("video", "active");
		ModelAndView mav = new ModelAndView("web/video");
		return mav;
	}

	@GetMapping(value = "/blog")
	public ModelAndView blog(HttpServletRequest request) {
		request.setAttribute("blog", "active");
		ModelAndView mav = new ModelAndView("web/blog");
		return mav;
	}

	@GetMapping(value = "/contact")
	public ModelAndView contact(HttpServletRequest request) {
		request.setAttribute("contact", "active");
		ModelAndView mav = new ModelAndView("web/contact");
		return mav;
	}

	@GetMapping(value = "/cart")
	public ModelAndView cart() {
		ModelAndView mav = new ModelAndView("web/cart");
		return mav;
	}

	@GetMapping(value = "/manage")
	public ModelAndView manage(Authentication authentication,
			@ModelAttribute("formChangePassword") FormChangePassword form,
			@ModelAttribute("uploadMedia") FormUploadMedia media) {
		User user = userService.findByUsername(authentication.getName());
		String remainingViews = null;
		String role = null;
		String expirationDate = null;
		if (user.getUserRole().equals(UserRoles.ROLE_VIEWER)) {
			UserViewer viewer = viewerService.findByUser(user);
			role = "VIEWER";
			remainingViews = String.valueOf(viewer.getMaxView());
		} else if (user.getUserRole().equals(UserRoles.ROLE_POSTER)) {
			UserPoster poster = posterService.findByUser(user);
			expirationDate = String.valueOf(poster.getExpirationDate());
			role = "POSTER";
			remainingViews = "UNLIMITED";
		}

		UserInformation info = new UserInformation(user.getId(), user.getUserName(), user.getEmail(),
				user.getFullName(), role, remainingViews);
		ModelAndView mav = new ModelAndView("web/manage");
		mav.addObject("infoAccount", info);
		mav.addObject("expirationDate", expirationDate);

		List<Category> categories = categoryService.findAll();
		if (categories.isEmpty()) {
			Category c1 = new Category("Literary");
			Category c2 = new Category("Economy");
			Category c3 = new Category("Education");
			Category c4 = new Category("Sword hero");
			Category c5 = new Category("Comic");
			Category c6 = new Category("Cultural");
			Category c7 = new Category("Novel");
			Category c8 = new Category("Children");
			Category c9 = new Category("Politic");
			Category c10 = new Category("Romantics");
			List<Category> listCategory = new ArrayList<Category>();
			listCategory.add(c1);
			listCategory.add(c2);
			listCategory.add(c3);
			listCategory.add(c4);
			listCategory.add(c5);
			listCategory.add(c6);
			listCategory.add(c7);
			listCategory.add(c8);
			listCategory.add(c9);
			listCategory.add(c10);
			categoryService.saveAll(listCategory);
		}
		List<Category> listCategories = categoryService.findAll();
		mav.addObject("categories", listCategories);
		return mav;
	}
	
	
}
