package com.iservice;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.models.Media;
import com.models.MediaType;

public interface IMediaService {

	MediaType mediaType(String name);

	List<String> uploadImages(MultipartFile[] images);

	String uploadFile(MultipartFile file);

	void save(Media media);

	List<Media> findByAll();

	Media findById(long id);

	void resizeImages(String inputImagePath, String outputImagePath, int scaledWidth, int scaledHeight)
			throws IOException;
}
