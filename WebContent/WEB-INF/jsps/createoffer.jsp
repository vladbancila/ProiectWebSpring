<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!-- Tag petru utilizare formular spring -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/html">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>Here will be the offers to create</p>

	<sf:form method="post" action="${pageContext.request.contextPath}/docreateoffer" commandName="offer">
		<table class="formtable">
			<tr>
				<td class="label">Nume:</td>
				<td><sf:input class="control" path="name" name="name" type="text" /><br/>
				<sf:errors path="name" cssClass="error"></sf:errors>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control" path="email" name="email" type="text" /><br/>
				<sf:errors path="email" cssClass="error"></sf:errors>
			</tr>
			<tr>
				<td class="label">Text:</td>
				<td><sf:textarea class="tx" path="info" name="info" rows="10" cols="10"></sf:textarea><br/>
				<sf:errors path="info" cssClass="error"></sf:errors>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" value="Create advert" type="submit" />
			</tr>
		</table>
	</sf:form>

</body>
</html>