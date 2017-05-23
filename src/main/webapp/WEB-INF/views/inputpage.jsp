<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>

<h2><c:choose>
        <c:when test="${edit}">
            Update
        </c:when>
        <c:otherwise>
            New
        </c:otherwise>
    </c:choose>
    Article Form</h2>

<form:form method="POST" modelAttribute="article">
    <form:input type="hidden" path="id" id="id"/>
    <table>
        <tr>
            <td><label for="title">Title: </label></td>
            <td><form:textarea path="title" id="title" rows="2" cols="45" /></td>
            <td><form:errors path="title" cssClass="error"/></td>
        </tr>

        <tr>
            <td valign="top"><label for="text">Text: </label> </td>
            <td><form:textarea path="text" id="text" rows="30" cols="45" /></td>
            <td><form:errors path="text" cssClass="error"/></td>
        </tr>

        <tr>
            <td>Picture to upload: </td>
            <td><input type="file" name="file"></td>
            <td></td>
        </tr>

        <tr>
            <td><label for="pic_name">New name of the file: </label> </td>
            <td><form:textarea path="pic_name" id="pic_name" rows="1" cols="45" /></td>
            <td><form:errors path="pic_name" cssClass="error"/></td>
        </tr>

        <tr>
            <td><label for="date">Date: </label> </td>
            <td><form:textarea path="date" id="date" rows="1" cols="45" /></td>
            <td><form:errors path="date" cssClass="error"/></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <c:choose>
                    <c:when test="${edit}">
                        <input type="submit" value="Update"/>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Enter"/>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</form:form>

<%@ include file="sidebar.jsp" %>
<%@ include file="footer.jsp" %>