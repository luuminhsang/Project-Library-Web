package com.iservice;

import java.util.List;

import com.models.Media;
import com.models.MediaImages;

public interface IMediaImageService {
	void saveAll(List<MediaImages> mediaImages);
	List<MediaImages> getByMedia(Media media);
}
