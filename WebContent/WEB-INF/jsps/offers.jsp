<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Aici se regasesc toate ofertele:</h1>

	<p>Salutare, ${nume} !</p>

	<c:out value="${nume}"></c:out>


	<sql:query var="rs" dataSource="jdbc/spring">
	select id,name,email,info from offers
	</sql:query>

	<c:forEach var="row" items="${rs.rows}">
		<p></p>
    Id: ${row.id}<br />
    Name: ${row.name}<br />
    Email: ${row.email}<br />
    Info: ${row.info}<br />
	</c:forEach>


	<c:forEach var="of" items="${offers}">
		<p></p>
    Id: ${of.id}<br />
    Name: ${of.name}<br />
    Email: ${of.email}<br />
    Info: ${of.info}<br />
	</c:forEach>

</body>
</html>