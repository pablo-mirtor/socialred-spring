<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Socialred - Nuevo Post</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

	<h2>Añadir Publicacion</h2>

	<%-- Importar la libreria form de Spring MVC --%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


	<form:form method="post" class="form" modelAttribute="newPost">
		<form:label path="">Contenido</form:label>
		<form:input path="content" size="40" maxlength="50"/>
		<br/><br/>
		
		<form:label path="">Autor de la publicación</form:label>
		<form:input path="author" cols="30" rows="5"/>
		<br/><br/>
		
		<input class="btn" type="submit" value="Subir Post" /> 
	</form:form>

</body>
</html>