<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>

<h2>List of Articles</h2>  

<table class="table">
    <c:forEach items="${articles}" var="article">
        <tr class="even"><td>Title: <b>${article.title}</b></td></tr>
        <tr><td>Date: <i>${article.date}</i></td></tr>
        <tr><td>Picture: <i>${article.pic_name}<i></td></tr>
        <tr><td>Text of the article:<br><br><i>${article.text}</i></td></tr>
        <tr>
            <td>
                article id${article.id}: 
                <a href="<c:url value='/edit-${article.id}-article' />">edit</a>
                &#160; 
                <a href="<c:url value='/delete-${article.id}-article' />">delete</a>
                <br><br>
            </td>
        </tr>
    </c:forEach>
</table>

<%@ include file="sidebar.jsp" %>
<%@ include file="footer.jsp" %>
