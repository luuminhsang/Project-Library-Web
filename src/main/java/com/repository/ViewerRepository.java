package com.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.models.User;
import com.models.UserViewer;

@Repository
public interface ViewerRepository extends JpaRepository<UserViewer, Long> {
	UserViewer findByUser(User user);

}
