package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iservice.IMediaImageService;
import com.models.Media;
import com.models.MediaImages;
import com.repository.MediaImageRepository;

@Service
public class MediaImageService implements IMediaImageService {

	@Autowired
	private MediaImageRepository mediaImgRepository;

	@Override
	public void saveAll(List<MediaImages> mediaImages) {
		mediaImgRepository.saveAll(mediaImages);

	}

	@Override
	public List<MediaImages> getByMedia(Media media) {
		List<MediaImages> medialImage = mediaImgRepository.findByMedia(media);
		return medialImage;
	}

}
