<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<spring:url value="/res/footerPage/simpleFooter.css" var="mainCss" />
        <link href="${mainCss}" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="footerblock">
<p>Made by Gvozd</p>
</div>
<%
    java.util.Calendar currTime = new java.util.GregorianCalendar();
    if ((currTime.get(currTime.MONTH) == 3)&&(currTime.get(currTime.DAY_OF_MONTH)==8))
    { %>
<spring:url value="/res/footerPage/heartFlower.gif" var="mainImg" />
   <% }
   else { %>
   <spring:url value="/res/footerPage/simpleFlower.png" var="mainImg" />
    <% } %>
    <div class="footerimage">
<img src="${mainImg}" alt="flower">
</div>
</body>
</html>