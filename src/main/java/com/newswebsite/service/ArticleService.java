/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newswebsite.service;

/**
 *
 * @author ivan
 */
import java.util.List;

import com.newswebsite.model.Article;

public interface  ArticleService {

    Article findById(int id);

    void saveArticle(Article article);

    void updateArticle(Article article);

    void deleteArticleById(int id);

    List<Article> findAllArticles();

    Article findArticleById(int id);

}
