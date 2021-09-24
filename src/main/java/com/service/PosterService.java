package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iservice.IPosterService;
import com.models.User;
import com.models.UserPoster;
import com.repository.PosterRepository;

@Service
public class PosterService implements IPosterService {

	@Autowired
	private PosterRepository posterRepository;

	@Override
	public UserPoster findByUser(User user) {
		return posterRepository.findByUser(user);
	}

	@Override
	public void save(UserPoster poster) {
		posterRepository.save(poster);

	}

}
