package org.socialred.mvc.web;

import java.util.Date;
import java.util.List;

import org.socialred.data.entities.Post;
import org.socialred.mvc.web.forms.PostForm;
import org.socialred.service.postservice.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostController {
	@Autowired
	private PostService service;

	@GetMapping(path = "/")
	public ModelAndView index() {
		List<Post> list = service.getAll();
		return new ModelAndView("index", "posts", list);
	}
	
	@GetMapping(path = "/addPost")
	public ModelAndView addPostView() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("newPost", new PostForm());
		mv.setViewName("addPost");
		return mv;
	}
	
	@PostMapping(path = "/addPost")
	public String addPost(PostForm form) {
		Post newPost = new Post(form.getContent(), form.getAuthor(),new Date());
	

		service.addPost(newPost);
	

		return "redirect:/";
	}
	
	@PostMapping(path = "/delete/{id}")
	public String deletePost(@PathVariable("id") int id) {
		
		service.deletePost(id);
	
		return "redirect:/";
	}
	
	@GetMapping(path = "/post/{id}")
	public ModelAndView viewPost(@PathVariable("id") int id) {
		return new ModelAndView("postDetails", "post", service.getPost(id));
	}
	
	
}
