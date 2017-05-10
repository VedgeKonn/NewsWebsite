<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Article</title>

        <style>
            tr:first-child{
                font-weight: bold;
                background-color: #C6C9C4;
            }
        </style>

    </head>


    <body>
        <a href="<c:url value='/new' />">Add New Article</a><br/>
        <a href="<c:url value='/index' />">Index Page</a><br/>
        <h2>List of Articles</h2>  
        <table>
            <tr>
                <td>Title</td><td>Date</td><td>Pic Name</td><td>Text</td><td></td>
            </tr>
            <c:forEach items="${articles}" var="article">
                <tr>
                    <td><a href="<c:url value='/edit-${article.id}-article' />">${article.title}</a></td>
                    <td>${article.date}</td>
                    <td>${article.pic_name}</td>
                    <td>${article.text}</a></td>
                    <td><a href="<c:url value='/delete-${article.id}-article' />">delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>