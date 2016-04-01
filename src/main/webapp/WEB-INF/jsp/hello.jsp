<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hello :: Spring Application</title>
        <spring:url value="/res/simple.css" var="mainCss" />
        <link href="${mainCss}" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Hello - Spring Application</h1>
        <p>Greetings.</p>

        <iframe width="600" height="450" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/search?q=%D0%9A%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BD%D0%B0%D1%8F%20%D1%88%D0%BA%D0%BE%D0%BB%D0%B0%20Hillel%2C%20%D1%83%D0%BB%D0%B8%D1%86%D0%B0%20%D0%9A%D0%B0%D0%BD%D0%B0%D1%82%D0%BD%D0%B0%D1%8F%2C%20%D0%9E%D0%B4%D0%B5%D1%81%D1%81%D0%B0%2C%20%D0%9E%D0%B4%D0%B5%D1%81%D1%81%D0%BA%D0%B0%D1%8F%20%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C%2C%20%D0%A3%D0%BA%D1%80%D0%B0%D0%B8%D0%BD%D0%B0&key=AIzaSyCKOZ4S7PnSYa-XoT9BoA5pPjvIW1_GMyA" allowfullscreen></iframe>
<br>
<a href="list.html">Перейти дальше</a>
    </body>
    <%@include file="/WEB-INF/jsp/includes/standartFooter.jsp" %>
</html>