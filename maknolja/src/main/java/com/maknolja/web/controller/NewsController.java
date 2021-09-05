package com.maknolja.web.controller;

import com.maknolja.service.NewsService;
import com.maknolja.vo.News;
import com.maknolja.web.view.JsonView;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {
    Logger logger = LogManager.getLogger(NewsController.class);

    @Autowired
    NewsService newsService;

    @Autowired
    JsonView jsonView;

    @GetMapping("/main")
    public String main(){
        return "news/main";
    }

    @RequestMapping("/list/json")
    public ModelAndView listJson() {
        List<News> news = newsService.getAllNewsWithoutFirst();

        ModelAndView mav = new ModelAndView();
        mav.addObject("data", news);
        mav.setView(jsonView);
        return mav;
    }

    @RequestMapping("latestJson")
    public ModelAndView getLatestNews() {
        News news = newsService.getLatestNews();

        ModelAndView mav = new ModelAndView();
        mav.addObject("data", news);
        mav.setView(jsonView);
        return mav;
    }

    @GetMapping("/detail")
    public String newsDetail(@RequestParam("no") int no, Model model){
        News news = newsService.getNewsByNo(no);
        model.addAttribute("news", news);

        return "news/detail";
    }
}
