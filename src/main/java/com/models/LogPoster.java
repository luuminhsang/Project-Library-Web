package com.models;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "log_poster")
public class LogPoster {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@ManyToOne(fetch = FetchType.LAZY)
	private User poster;

	@ManyToOne(fetch = FetchType.LAZY)
	private Media media;

	@NotNull
	private LocalDateTime time;

	@Enumerated(EnumType.STRING)
	private PosterAction action;

	public LogPoster() {
		super();
	}

}
