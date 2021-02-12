<%@ page language='java' contentType='text/html'
         isErrorPage='false' isELIgnored='false' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Socialred - Detalles</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
		<h2>Socialred</h2>
		<hr />
		<a class="btn" href="<c:url value='/'/>">Inicio</a>
		
	<div class="container">
		<h5>Contenido del post:</h5> <c:out value="${post.content}" />
		<br />
		<br />
		<h5>Escrito por: </h5><c:out value="${post.author}" />
		<br />
		<c:out value="${post.postDate}" />
	</div>
	<span> 
	</span>
</body>
</html>