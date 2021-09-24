package com.models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users_viewer")
public class UserViewer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(columnDefinition = "integer default 10")
	private int maxView = 10;

	@Column(columnDefinition = "integer default 0")
	private int views;

	@Column(columnDefinition = "integer default 0")
	private int likes;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id")
	private User user;

	public UserViewer() {
		super();
	}

	public UserViewer(User user) {
		this.user = user;
	}

	public int getMaxView() {
		return maxView;
	}

	public void setMaxView(int maxView) {
		this.maxView = maxView;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public long getId() {
		return id;
	}

	@Override
	public String toString() {
		return "UserViewer [id=" + id + ", maxView=" + maxView + ", views=" + views + ", likes=" + likes + ", user="
				+ user + "]";
	}

}
