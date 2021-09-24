package com.controller;

import java.io.BufferedInputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.dto.FormUploadMedia;
import com.iservice.ICategoryService;
import com.iservice.IMediaImageService;
import com.iservice.IMediaService;
import com.iservice.IUserService;
import com.models.Category;
import com.models.Media;
import com.models.MediaImages;
import com.models.User;

@RestController(value = "media")
public class MediaController {

	@Autowired
	private IMediaService mediaService;

	@Autowired
	private IUserService userService;

	@Autowired
	private ICategoryService categoryService;

	@Autowired
	private IMediaImageService mediaImgService;

	@PostMapping(value = "/uploadMedia")
	public ModelAndView uploadMedia(@ModelAttribute("uploadMedia") FormUploadMedia upload, Authentication auth,
			RedirectAttributes redirectAttributes) {
		User user = userService.findByUsername(auth.getName());
		Category category = categoryService.findByName(upload.getCategory());
		List<String> listUploadImg = mediaService.uploadImages(upload.getImages());
		Media media = new Media(upload.getName(), upload.getAuthor(),
				mediaService.mediaType(upload.getFile().getOriginalFilename()), upload.getDescription(),
				mediaService.uploadFile(upload.getFile()), listUploadImg.get(0), user, category);
		mediaService.save(media);

		List<MediaImages> listMediaImg = new ArrayList<MediaImages>();
		for (int i = 0; i < listUploadImg.size(); i++) {
			MediaImages mediaImg = new MediaImages(listUploadImg.get(i), media);
			listMediaImg.add(mediaImg);
		}
		mediaImgService.saveAll(listMediaImg);
		ModelAndView mav = new ModelAndView(new RedirectView("/manage"));
		redirectAttributes.addFlashAttribute("message", "Upload successfull");
		return mav;
	}
		
	@GetMapping(value = "/details")
	public ModelAndView details(@RequestParam (value="id", required = false, defaultValue="0")int id) {
		ModelAndView mav = new ModelAndView("web/details");
		Media media = mediaService.findById(id);
		mav.addObject("media" , media);
		return mav;
	}
	
	

	@GetMapping(value = "/download")
	public StreamingResponseBody downloadMedia(@RequestParam(value = "mediaId") Long mediaId,
			HttpServletRequest request, HttpServletResponse response) {
		Media media = mediaService.findById(mediaId);
		try {
			ServletContext cntx = request.getServletContext();
			String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getLocalPort() + "/"
					+ media.getUrl();
			String mime = cntx.getMimeType(url);
			response.setContentType(mime);
			response.setHeader("Content-Disposition", "attachment; filename=\"" + media.getName() + ".pdf\"");
			BufferedInputStream inputStream = new BufferedInputStream(new URL(url).openStream());
			return outputStream -> {
				int nRead;
				byte[] data = new byte[1024];
				while ((nRead = inputStream.read(data, 0, data.length)) != -1) {
					outputStream.write(data, 0, nRead);
				}
			};
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
}
