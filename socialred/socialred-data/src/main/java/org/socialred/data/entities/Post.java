package org.socialred.data.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="post")
public class Post implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name="content")
	private String content;
	@Column(name="author")
	private String author;
	@Column(name="postedDate")
	private Date postDate;
	
	public Post() {
		super();
	}
	
	public Post(String content, String author, Date postDate) {
		super();
		this.content = content;
		this.author = author;
		this.postDate = postDate;
	}
	
	public Post(int id, String content, String author, Date postDate) {
		super();
		this.id = id;
		this.content = content;
		this.author = author;
		this.postDate = postDate;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", content=" + content + ", author=" + author + "]";
	}
	
	
	
}
