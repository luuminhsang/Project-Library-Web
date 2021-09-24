package com.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@Entity
@Table(name = "users_user", uniqueConstraints = { @UniqueConstraint(columnNames = "userName"),
		@UniqueConstraint(columnNames = "email") })
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@NotNull(message = "Usename can not be blank")
	@Size(max = 50, message = "Cannot be longer than 50 characters")
	private  String userName;

	@NotNull(message = "Password can not be blank")
	private String password;

	@Email(message = "Email invalid")
	private String email;

	@Size(max = 50, message = "Cannot be longer than 50 characters")
	private String fullName;

	@Enumerated(EnumType.STRING)
	@Size(max = 20)
	private UserRoles userRole;

	@OneToOne(mappedBy = "user")
	private UserAdmin admin;

	@OneToOne(mappedBy = "user")
	private UserViewer viewer;

	@OneToOne(mappedBy = "user")
	private UserPoster poster;

	@OneToMany(mappedBy = "poster")
	private List<LogPoster> post;

	@OneToMany(mappedBy = "viewer")
	private List<LogViewer> view;

	@OneToMany(mappedBy = "user")
	private List<Media> media;
	
	public User() {
		super();
	}

	public User(long id, String userName, String password, String email, String fullName, UserRoles userRole) {
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.userRole = userRole;
	}

	public User(String userName, String password, String email, String fullName, UserRoles userRole) {
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.fullName = fullName;
		this.userRole = userRole;
	}

	public User(String password) {
		this.password = password;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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

	public UserRoles getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRoles userRole) {
		this.userRole = userRole;
	}

	public UserAdmin getAdmin() {
		return admin;
	}

	public void setAdmin(UserAdmin admin) {
		this.admin = admin;
	}

	public UserViewer getViewer() {
		return viewer;
	}

	public void setViewer(UserViewer viewer) {
		this.viewer = viewer;
	}

	public UserPoster getPoster() {
		return poster;
	}

	public void setPoster(UserPoster poster) {
		this.poster = poster;
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

	public List<Media> getMedia() {
		return media;
	}

	public void setMedia(List<Media> media) {
		this.media = media;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	@Override
	public String toString() {
		return "User id: " + getId() + "\t username:" + getUserName() + "\t password: " + getPassword() + "\t email: "
				+ getEmail() + "\t name:" + getFullName() + "\t userRole: " + getUserRole();
	}

}
