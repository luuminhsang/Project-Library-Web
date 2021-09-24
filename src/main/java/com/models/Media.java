package com.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@Entity
@Table(name = "media")
public class Media {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@NotNull(message = "Name must not be blank")
	private String name;

	@NotNull(message = "Author must not be blank")
	private String author;

	@Enumerated(EnumType.STRING)
	private MediaType mediaType;

	@Column(columnDefinition = "integer default 0")
	private int views = 0;

	@Column(columnDefinition = "integer default 0")
	private int likes = 0;

	@Size(max = 1000)
	private String Description;

	@NotNull(message = "File must not be blank")
	private String url;

	@Size(max = 255)
	private String coverImage;

	@ManyToOne(fetch = FetchType.LAZY)
	private User user;

	@ManyToOne(cascade = CascadeType.ALL)
	private Category category;

	@OneToMany(mappedBy = "media")
	private List<LogPoster> post;

	@OneToMany(mappedBy = "media")
	private List<LogViewer> view;

	@OneToMany(mappedBy = "media")
	private List<MediaImages> images;

	public Media() {
		super();
	}

	public Media(String name, String author, MediaType mediaType, String description, String url, String coverImage,
			User user, Category category) {
		this.name = name;
		this.author = author;
		this.mediaType = mediaType;
		this.Description = description;
		this.url = url;
		this.coverImage = coverImage;
		this.user = user;
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public MediaType getMediaType() {
		return mediaType;
	}

	public void setMediaType(MediaType mediaType) {
		this.mediaType = mediaType;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCoverImage() {
		return coverImage;
	}

	public void setCoverImage(String coverImage) {
		this.coverImage = coverImage;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<LogPoster> getPost() {
		return post;
	}

	public void setPost(List<LogPoster> post) {
		this.post = post;
	}

	public List<LogViewer> getView() {
		return view;
	}

	public void setView(List<LogViewer> view) {
		this.view = view;
	}

	public long getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Media [id=" + id + ", name=" + name + ", author=" + author + ", mediaType=" + mediaType + ", views="
				+ views + ", likes=" + likes + ", Description=" + Description + ", url=" + url + ", coverImage="
				+ coverImage + ", user=" + user + ", category=" + category + ", post=" + post + ", view=" + view + "]";
	}

}
