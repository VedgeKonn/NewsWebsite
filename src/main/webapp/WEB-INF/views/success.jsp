<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>

<h3>${success}</h3>
<br>
<br>
<h4>Go back to <a href="<c:url value='/' />">Home Page</a></h4>

<%@ include file="sidebar.jsp" %>
<%@ include file="footer.jsp" %>