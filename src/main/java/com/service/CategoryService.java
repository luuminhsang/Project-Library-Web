package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iservice.ICategoryService;
import com.models.Category;
import com.repository.CategoryRepository;

@Service
public class CategoryService implements ICategoryService {

	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public List<Category> findAll() {
		return categoryRepository.findAll();
	}

	@Override
	public void saveAll(List<Category> listCategory) {
		categoryRepository.saveAll(listCategory);

	}

	@Override
	public Category findByName(String name) {
		return categoryRepository.findByName(name);
	}
}
