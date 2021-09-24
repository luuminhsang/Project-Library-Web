package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iservice.IAdminService;
import com.models.UserAdmin;
import com.repository.AdminRepository;

@Service
public class AdminService implements IAdminService {

	@Autowired
	private AdminRepository adminRepository;

	@Override
	public void save(UserAdmin admin) {
		adminRepository.save(admin);

	}

}
