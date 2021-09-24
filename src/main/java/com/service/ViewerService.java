package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iservice.IViewerService;
import com.models.User;
import com.models.UserViewer;
import com.repository.ViewerRepository;

@Service
public class ViewerService implements IViewerService {

	@Autowired
	private ViewerRepository viewerRepository;

	@Override
	public void save(UserViewer viewer) {
		viewerRepository.save(viewer);

	}

	@Override
	public void update(UserViewer viewer) {
		viewerRepository.save(viewer);

	}

	@Override
	public UserViewer findByUser(User user) {
		UserViewer viewer = viewerRepository.findByUser(user);
		return viewer;
	}

}
