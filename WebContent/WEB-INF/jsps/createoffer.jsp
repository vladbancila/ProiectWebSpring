<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/html">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>Here will be the offers to create</p>

	<form method="post" action="${pageContext.request.contextPath}/docreateoffer">
		<table class="formtable">
			<tr>
				<td class="label">Nume:</td>
				<td><input class="control" name="name" type="text" />
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><input class="control" name="email" type="text" />
			</tr>
			<tr>
				<td class="label">Text:</td>
				<td><textarea class="tx" name="info" rows="10" cols="10"></textarea>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" value="Create advert" type="submit" />
			</tr>
		</table>
	</form>

</body>
</html>