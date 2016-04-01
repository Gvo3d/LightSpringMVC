<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<body>
<p>Made by Gvozd</p>
<%
    java.util.Calendar currTime = new java.util.GregorianCalendar();
    if ((currTime.get(currTime.MONTH) == 3)&&(currTime.get(currTime.DAY_OF_MONTH)==8))
    { %>
<spring:url value="/res/footerPage/heartFlower.gif" var="mainImg" />
   <% }
   else { %>
   <spring:url value="/res/footerPage/simpleFlower.png" var="mainImg" />
    <% } %>
<br>
<img src="${mainImg}" alt="flower">
</body>
</html>