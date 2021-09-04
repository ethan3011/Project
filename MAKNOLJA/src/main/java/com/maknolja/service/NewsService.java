package com.maknolja.service;

import com.maknolja.vo.News;

import java.util.List;

public interface NewsService {

    /**
     * 모든 뉴스의 정보가 담긴 객체를 반환한다.
     * @return 모든 뉴스정보가 담긴 객체
     */
    List<News> getAllNewsWithoutFirst();

    /**
     * 가장 최근의 뉴스 정보를 가져온다.
     * @return 가장 최근의 뉴스정보
     */
    News getLatestNews();

    /**
     * 뉴스의 번호로 검색하여 일치하는 객체를 반환한다.
     * @param no 검색번호
     * @return 일치하는 뉴스 객체
     */
    News getNewsByNo(int no);
}
