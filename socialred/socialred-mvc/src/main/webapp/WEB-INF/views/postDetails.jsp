<%@ page language='java' contentType='text/html'
         isErrorPage='false' isELIgnored='false' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Socialred - index</title>
</head>
<body>
		<h2>Socialred</h2>
		<hr />
		<a href="<c:url value='/'/>">Inicio</a>
		
	<div>
		<c:out value="${post.content}" />
		<br />
		<br />
		<c:out value="${post.author}" />
		<br />
	</div>
	<span> <c:out value="${post.postDate}" />
	</span>
</body>
</html>