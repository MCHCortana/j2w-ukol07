package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.awt.print.Pageable;

@Controller
@RequestMapping("/")
public class BlogController {
    private final BlogService blogService;

    @Autowired
    public BlogController(BlogService blogService) {
        this.blogService = blogService;
    }

    @GetMapping("/blog-clanek/{slug}")
    public Object detail(@PathVariable String slug) {
        return new ModelAndView("blogPost")
                .addObject("post", blogService.singleBlog(slug));
    }

    @GetMapping("/")
    public ModelAndView seznamBlogPostu() {
        return new ModelAndView("index")
                .addObject("seznamBlogovychPostu", blogService.blogList());
    }

}
