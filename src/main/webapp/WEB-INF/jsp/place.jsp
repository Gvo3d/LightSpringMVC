<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
	<title><spring:message code="label.title" /></title>
</head>
<body>

<a href="<c:url value="/logout" />">
	<spring:message code="label.logout" />
</a>

<h2><spring:message code="label.title" /></h2>


	<table class="placedata">
		<tr>
			<th><spring:message code="label.placeNameId" /></th>
			<th><spring:message code="label.adescription" /></th>
			<th><spring:message code="label.address" /></th>
			<th><spring:message code="label.telephone" /></th>
			<th>&nbsp;</th>
		</tr>

			<tr>
				<td><%= searchplace.placename %></td>
				<td><%= searchplace.description %></td>
				<td><%= searchplace.address %></td>
				<td><%= searchplace.telephone %></td>
				<td><a href="delete/${place.id}"><spring:message code="label.delete" /></a></td>
			</tr>
	</table>

</body>
<%@include file="/WEB-INF/jsp/includes/standartFooter.jsp" %>
</html>
