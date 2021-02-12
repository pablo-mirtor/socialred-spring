package org.socialred.service.postservice;

import java.util.List;

import org.socialred.data.entities.Post;
import org.socialred.data.repositories.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImp implements PostService {
	
	@Autowired
	PostRepository repository;

	public List<Post> getAll(){
		System.out.println("Probando");
		return repository.findAll();
	}

	@Override
	public boolean addPost(Post p) {
		boolean result = false;
		try {
			repository.save(p);
			result = true;
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	@Override
	public boolean deletePost(Integer id) {
		boolean result = false;
		try {
			Post p = repository.findById(id).get();
			repository.delete(p);
			result = true;
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return result;
	}

	@Override
	public Post getPost(Integer id) {
		// TODO Auto-generated method stub
		return repository.findById(id).get();
	}
}
