package com.maknolja.service;

import com.maknolja.dao.NewsDao;
import com.maknolja.vo.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsDao newsDao;

    @Override
    public List<News> getAllNewsWithoutFirst() {
        List<News> news = newsDao.getAllNewsWithoutFirst();
        return news;
    }

    @Override
    public News getLatestNews() {
        News news = newsDao.getLatestNews();
        return news;
    }

    @Override
    public News getNewsByNo(int no) {
        News news = newsDao.getNewsByNo(no);
        return news;
    }
}
