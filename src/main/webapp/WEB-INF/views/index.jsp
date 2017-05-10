<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>

<div id="section" class="box">
    <div id="content">
        <ul class="articles box">
            
            <c:forEach items="${articles}" var="article">
                <li>
                    <h2><a href="<c:url value='/edit-${article.id}-article' />">${article.title}</a></h2>
                    <div class="article-info box">
                        <p class="f-left">${article.date}</p>
                    </div>
                    <p><img src="<c:url value='/resources/tmp/${article.pic_name}' />" alt="" class="f-left" /></p>
                    <p>${article.text}</p>
                    <%--<p><a href="<c:url value='/delete-${article.id}-article' />">delete</a></p>
                    <p class="more"><a href="#">Read more &raquo;</a></p>--%>
                </li>
            </c:forEach>
        </ul>


        <div class="pagination box">
            <p class="f-right"> <a href="#" class="current">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">Next &raquo;</a> </p>
            <p class="f-left">Page 1 of 13</p>
        </div>
    </div>

    <%@ include file="footer.jsp" %>