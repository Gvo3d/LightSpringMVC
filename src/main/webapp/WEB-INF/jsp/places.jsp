<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /></title>
</head>
<body>

<a href="<c:url value="/logout" />">
	<spring:message code="label.logout" />
</a>

<h2><spring:message code="label.title" /></h2>

<form:form method="post" action="add" commandName="place">

	<table>
		<tr>
			<td><form:label path="placename">
				<spring:message code="label.placename" />
			</form:label></td>
			<td><form:input path="placename" /></td>
		</tr>
		<tr>
			<td><form:label path="description">
				<spring:message code="label.description" />
			</form:label></td>
			<td><form:input path="description" /></td>
		</tr>
		<tr>
			<td><form:label path="address">
				<spring:message code="label.address" />
			</form:label></td>
			<td><form:input path="address" /></td>
		</tr>
		<tr>
			<td><form:label path="telephone">
				<spring:message code="label.telephone" />
			</form:label></td>
			<td><form:input path="telephone" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"
				value="<spring:message code="label.addplace"/>" /></td>
		</tr>
	</table>
</form:form>

<h3><spring:message code="label.places" /></h3>
<c:if test="${!empty placeList}">
	<table class="data">
		<tr>
			<th><spring:message code="label.placename" /></th>
			<th><spring:message code="label.address" /></th>
			<th><spring:message code="label.telephone" /></th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach items="${placeList}" var="places">
			<tr>
				<td>${place.placename}</td>
				<td>${place.description}</td>
				<td>${place.address}</td>
				<td>${place.telephone}</td>
				<td><a href="delete/${place.id}"><spring:message code="label.delete" /></a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>

</body>
</html>