package com.maknolja.dao;

import com.maknolja.vo.News;

import java.util.List;

public interface NewsDao {

    List<News> getAllNewsWithoutFirst();

    News getLatestNews();

    News getNewsByNo(int no);
}
