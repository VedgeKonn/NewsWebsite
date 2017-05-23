/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newswebsite.dao;

/**
 *
 * @author ivan
 */
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.newswebsite.model.Article;

@Repository("articleDao")
public class ArticleDaoImpl extends AbstractDao<Integer, Article> implements ArticleDao {

    public Article findById(int id) {
        return getByKey(id);
    }

    public void saveArticle(Article article) {
        persist(article);
    }

    public void deleteArticleById(int id) {
        Query query = getSession().createSQLQuery("delete from Article where id = :id");
        query.setInteger("id", id);
        query.executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<Article> findAllArticles() {
        Criteria criteria = createEntityCriteria();
        return (List<Article>) criteria.list();
    }

    public Article findArticleById(int id) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("id", id));
        return (Article) criteria.uniqueResult();
    }

}
