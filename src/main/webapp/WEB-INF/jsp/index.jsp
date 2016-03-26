<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Example :: Spring Application</title>
        <spring:url value="/resources/simple.css" var="mainCss" />
        <link href="${mainCss}" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Example - Spring Application</h1>
        <p>This is my test.</p>
        <a href="hello.html">Hillel IT School</a>
    </body>
</html>