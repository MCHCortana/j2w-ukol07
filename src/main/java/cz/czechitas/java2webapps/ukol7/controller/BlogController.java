package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class BlogController {
    private final BlogService blogService;

    @Autowired
    public BlogController(BlogService blogService) {
        this.blogService = blogService;
    }

    @GetMapping("/post/{slug}")
    public Object detail(@PathVariable String slug) {
        return new ModelAndView("detail")
                .addObject("post", blogService.singleBlog(slug));
    }

    @GetMapping("/")
    public ModelAndView index() {
        return new ModelAndView("index")
                .addObject("seznamBlogovychPostu", blogService.blogList());
    }



}
