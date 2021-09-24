package com.iservice;

import java.util.List;

import com.models.Category;

public interface ICategoryService {
	List<Category> findAll();

	void saveAll(List<Category> listCategory);

	Category findByName(String name);
}
