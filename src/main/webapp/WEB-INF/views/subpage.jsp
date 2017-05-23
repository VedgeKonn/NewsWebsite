<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>

<h1>Heading H1</h1>
<h2>Heading H2</h2>
<h3>Heading H3</h3>
<h4>Heading H4</h4>
<h5>Heading H5</h5>
<h6>Heading H6</h6>
<p class="box"><img src="<c:url value='/resources/tmp/article-01.jpg' />" alt="" class="f-left" />Suspendisse posuere, metus eget pharetra adipiscing, arcu velit lobortis augue, quis pharetra mauris ante a velit. Duis feugiat, odio a mattis gravida, velit est euismod urna, vitae gravida elit turpis sit amet elit. Phasellus ac hendrerit tortor. Aliquam erat volutpat. Donec laoreet viverra sapien et luctus. Cras fringilla commodo nulla sit amet congue. Donec aliquam gravida elit, in fringilla urna adipiscing in. Sed vel risus id urna luctus eleifend. Morbi ut fringilla magna. Curabitur lobortis molestie tellus ac ultricies. Maecenas tempus rutrum mauris in auctor. Ut interdum diam a justo malesuada dignissim.</p>
<h2>List</h2>
<ul class="ul">
    <li>Lorem ipsum dolor sit amet</li>
    <li>Lorem ipsum dolor sit amet</li>
    <li>Lorem ipsum dolor sit amet
        <ul>
            <li>Lorem ipsum dolor sit amet</li>
            <li>Lorem ipsum dolor sit amet</li>
            <li>Lorem ipsum dolor sit amet
                <ul>
                    <li>Lorem ipsum dolor sit amet</li>
                    <li>Lorem ipsum dolor sit amet</li>
                    <li>Lorem ipsum dolor sit amet</li>
                    <li>Lorem ipsum dolor sit amet</li>
                    <li>Lorem ipsum dolor sit amet</li>
                    <li>Lorem ipsum dolor sit amet</li>
                </ul>
            </li>
            <li>Lorem ipsum dolor sit amet</li>
            <li>Lorem ipsum dolor sit amet</li>
            <li>Lorem ipsum dolor sit amet</li>
        </ul>
    </li>
    <li>Lorem ipsum dolor sit amet</li>
    <li>Lorem ipsum dolor sit amet</li>
    <li>Lorem ipsum dolor sit amet</li>
</ul>
<h2>Table</h2>
<table class="table">
    <tr>
        <th>Header</th>
        <th>Header</th>
        <th>Header</th>
        <th>Header</th>
        <th>Header</th>
    </tr>
    <tr>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
    </tr>
    <tr class="even">
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
    </tr>
    <tr>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
    </tr>
    <tr class="even">
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
    </tr>
    <tr>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
    </tr>
</table>
<h2>Image gallery</h2>
<ul class="gallery box">
    <li><a href="#"><img src="<c:url value='/resources/tmp/gallery-01.jpg' />" alt="" /></a></li>
    <li><a href="#"><img src="<c:url value='/resources/tmp/gallery-02.jpg' />" alt="" /></a></li>
    <li><a href="#"><img src="<c:url value='/resources/tmp/gallery-03.jpg' />" alt="" /></a></li>
</ul>
<h2>Form</h2>
<form action="#" method="post" class="form">
    <ul>
        <li>
            <label for="input-01">Your Name (required):</label>
            <input type="text" size="45" class="input-text" id="input-01" />
        </li>
        <li>
            <label for="input-02">E-mail Address (required):</label>
            <input type="text" size="45" class="input-text" id="input-02" />
        </li>
        <li>
            <label for="input-03">Website:</label>
            <input type="text" size="45" class="input-text" id="input-03" />
        </li>
        <li>
            <label for="input-04">Your Message (required):</label>
            <textarea cols="75" rows="10" class="input-text" id="input-04"></textarea>
        </li>
        <li>
            <input type="submit" value="Submit" class="input-submit" />
        </li>
    </ul>
</form>

<%@ include file="sidebar.jsp" %>
<%@ include file="footer.jsp" %>
