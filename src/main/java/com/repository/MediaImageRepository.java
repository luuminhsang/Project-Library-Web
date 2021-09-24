package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.models.Media;
import com.models.MediaImages;

@Repository
public interface MediaImageRepository extends JpaRepository<MediaImages, Long> {
	List<MediaImages> findByMedia(Media media);
}
