/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newswebsite.controller;

/**
 *
 * @author ivan
 */
import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.newswebsite.model.Article;
import com.newswebsite.service.ArticleService;

@Controller
@RequestMapping("/")
public class AppController {

    @Autowired
    ArticleService service;

    @Autowired
    MessageSource messageSource;

    /*
     * This method will list all articles.
     */
    @RequestMapping(value = {"/list"}, method = RequestMethod.GET)
    public String listArticles(ModelMap model) {

        List<Article> articles = service.findAllArticles();
        model.addAttribute("articles", articles);
        return "allarticles";
    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String indexPage(ModelMap model) {

        List<Article> articles = service.findAllArticles();
        model.addAttribute("articles", articles);
        return "index";
    }
    
    @RequestMapping(value = {"/subpage"}, method = RequestMethod.GET)
    public String subPage(ModelMap model) {

        List<Article> articles = service.findAllArticles();
        model.addAttribute("articles", articles);
        return "subpage";
    }

    /*
     * This method will provide the medium to add a new article.
     */
    @RequestMapping(value = {"/new"}, method = RequestMethod.GET)
    public String newArticle(ModelMap model) {
        Article article = new Article();
        model.addAttribute("article", article);
        model.addAttribute("edit", false);
        return "inputpage";
    }

    /*
     * This method will be called on form submission, handling POST request for
     * saving article in database. It also validates the user input
     */
    @RequestMapping(value = {"/new"}, method = RequestMethod.POST)
    public String saveArticle(@Valid Article article, BindingResult result,
            ModelMap model) {

        if (result.hasErrors()) {
            return "inputpage";
        }

        service.saveArticle(article);

        model.addAttribute("success", "Article " + article.getTitle() + " entered successfully");
        return "success";
    }

    /*
     * This method will provide the medium to update an existing article.
     */
    @RequestMapping(value = {"/edit-{id}-article"}, method = RequestMethod.GET)
    public String editArticle(@PathVariable int id, ModelMap model) {
        Article article = service.findArticleById(id);
        model.addAttribute("article", article);
        model.addAttribute("edit", true);
        return "inputpage";
    }

    /*
     * This method will be called on form submission, handling POST request for
     * updating article in database. It also validates the user input
     */
    @RequestMapping(value = {"/edit-{id}-article"}, method = RequestMethod.POST)
    public String updateArticle(@Valid Article article, BindingResult result,
            ModelMap model, @PathVariable int id) {

        if (result.hasErrors()) {
            return "inputpage";
        }

        service.updateArticle(article);

        model.addAttribute("success", "Article " + article.getTitle() + " updated successfully");
        return "success";
    }

    /*
     * This method will delete an article by it's id value.
     */
    @RequestMapping(value = {"/delete-{id}-article"}, method = RequestMethod.GET)
    public String deleteArticle(@PathVariable int id) {
        service.deleteArticleById(id);
        return "redirect:/list";
    }

}
