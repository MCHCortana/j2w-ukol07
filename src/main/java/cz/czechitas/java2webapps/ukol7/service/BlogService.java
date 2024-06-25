package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.BlogRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class BlogService {
    private final BlogRepository blogRepository;

    public BlogService(BlogRepository blogRepository) {
        this.blogRepository = blogRepository;
    }

    public Page<Post> blogList() {
        Pageable pageable = PageRequest.of(0, 7);
        return blogRepository.findBeforeToday(pageable);

    }

    public Post singleBlog(String slug) {
        return blogRepository.findBySlug(slug);
    }
}