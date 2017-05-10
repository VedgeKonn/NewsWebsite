<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>News Today</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <%--<link rel="stylesheet" media="screen,projection" type="text/css" href="<c:url value='/css/main.css'/>" />
        <link rel="stylesheet" media="screen,projection" type="text/css" href="<c:url value='/css/skin.css'/>" />--%>
        <link href="<c:url value='/resources/css/main.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/resources/css/skin.css' />" rel="stylesheet"></link>
        <script type="text/javascript" src="<c:url value='/resources/javascript/cufon-yui.js' />"></script>
        <script type="text/javascript" src="<c:url value='/resources/javascript/font.font.js' />"></script>
        <script type="text/javascript">
            Cufon.replace('h1, h2, h3, h4, h5, h6', {
                hover: true
            });
        </script>
    </head>
    <body>
        <!-- START PAGE SOURCE -->
        <div class="main">
            <div id="header" class="box">
                <h1 id="logo">News<span>Today</span></h1>
                <ul id="nav">
                    <!--<li class="current"><a href="redirect.jsp">Homepage</a></li>-->
                    <li><a href="<c:url value='/index' />">Homepage</a></li>
                    <li><a href="<c:url value='/new' />">Add New Article</a></li>
                    <li><a href="<c:url value='/list' />">List All Articles</a></li>
                    <li><a href="<c:url value='/subpage' />">SubPage</a></li>
                </ul>
            </div>
