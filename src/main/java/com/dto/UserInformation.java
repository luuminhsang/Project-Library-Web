package com.dto;


public class UserInformation {
	private long id;
	private String username;
	private String email;
	private String fullName;
	private String role;
	private String remainingViews;

	public UserInformation(long id, String username, String email, String fullName, String role, String remainingViews) {
		this.id = id;
		this.username = username;
		this.email = email;
		this.fullName = fullName;
		this.role = role;
		this.remainingViews = remainingViews;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getRemainingViews() {
		return remainingViews;
	}

	public void setRemainingViews(String remainingViews) {
		this.remainingViews = remainingViews;
	}

	public long getId() {
		return id;
	}

	@Override
	public String toString() {
		return "UserViewerDTO [id=" + id + ", username=" + username + ", email=" + email + ", fullName=" + fullName
				+ ", role=" + role + ", remainingViews=" + remainingViews + "]";
	}

}
