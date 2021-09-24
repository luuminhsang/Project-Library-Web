package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.models.Media;

public interface MediaRepository extends JpaRepository<Media, Long>{
	Media findById(long id);
}
