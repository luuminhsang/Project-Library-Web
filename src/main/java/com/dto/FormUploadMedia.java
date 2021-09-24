package com.dto;

import org.springframework.web.multipart.MultipartFile;

public class FormUploadMedia {
	private String name;
	private String author;
	private MultipartFile[] images;
	private MultipartFile file;
	private String category;
	private String description;

	public FormUploadMedia(String name, String author, MultipartFile[] images, MultipartFile file, String category,
			String description) {
		this.name = name;
		this.author = author;
		this.images = images;
		this.file = file;
		this.category = category;
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public MultipartFile[] getImages() {
		return images;
	}

	public void setImages(MultipartFile[] images) {
		this.images = images;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "FormUploadMedia [name=" + name + ", author=" + author + ", images=" + images + ", file=" + file
				+ ", category=" + category + ", description=" + description + "]";
	}

}
