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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newswebsite.dao.ArticleDao;
import com.newswebsite.model.Article;

@Service("articleService")
@Transactional
public class ArticleServiceImpl implements ArticleService {
   

    @Autowired
    private ArticleDao dao;

    public Article findById(int id) {
        return dao.findById(id);
    }

    public void saveArticle(Article article) {
        dao.saveArticle(article);
    }

    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateArticle(Article article) {
        Article entity = dao.findById(article.getId());
        if (entity != null) {
            entity.setTitle(article.getTitle());
            entity.setText(article.getText());
            entity.setDate(article.getDate());
            entity.setPic_name(article.getPic_name());
        }
    }

    public void deleteArticleById(int id) {
        dao.deleteArticleById(id);
    }

    public List<Article> findAllArticles() {
        return dao.findAllArticles();
    }

    public Article findArticleById(int id) {
        return dao.findArticleById(id);
    }

}
