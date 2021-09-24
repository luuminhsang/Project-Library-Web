package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.models.User;
import com.models.UserPoster;

public interface PosterRepository extends JpaRepository<UserPoster, Long> {

	UserPoster findByUser(User user);

}
