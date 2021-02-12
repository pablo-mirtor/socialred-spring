package org.socialred.service.postservice;

import java.util.List;

import org.socialred.data.entities.Post;

public interface PostService {
	List<Post> getAll();
	boolean addPost(Post p);
	boolean deletePost(Integer id);
	Post getPost(Integer id);
}
