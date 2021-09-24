package com.dto;

import com.models.UserRoles;

public class UserDTO {
	private long id;
	private String userName;
	private String password;
	private String email;
	private String fullName;
	private UserRoles userRole;
	private String confirmPassword;

	public UserDTO() {
	}

	public UserDTO(long id, String userName, String password, String email, String fullName, UserRoles userRole,
			String confirmPassword) {
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.userRole = userRole;
		this.confirmPassword = confirmPassword;
	}

	public UserDTO(long id, String userName, String password, String email, String fullName, UserRoles userRole) {
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.userRole = userRole;
	}

	public UserDTO(String userName, String password, String email, String fullName, UserRoles userRole,
			String confirmPassword) {
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.userRole = userRole;
		this.confirmPassword = confirmPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserRoles getRole() {
		return userRole;
	}

	public void setRole(UserRoles role) {
		this.userRole = role;
	}

	public long getId() {
		return id;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	@Override
	public String toString() {
		return "User id: " + getId() + "\t username: " + getUserName() + "\t password: " + getPassword() + "\t email: "
				+ getEmail() + "\t name: " + getFullName() + "\t role: " + getRole();
	}

}
