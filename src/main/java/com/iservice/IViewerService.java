package com.iservice;

import com.models.User;
import com.models.UserViewer;

public interface IViewerService {

	void save(UserViewer viewer);

	void update(UserViewer viewer);

	UserViewer findByUser(User user);
}
