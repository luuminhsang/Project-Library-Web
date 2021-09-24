package com.iservice;

import com.models.User;
import com.models.UserPoster;

public interface IPosterService {
	UserPoster findByUser(User user);

	void save(UserPoster poster);
}
