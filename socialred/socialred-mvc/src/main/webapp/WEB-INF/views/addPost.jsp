<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Socialred - Nuevo Post</title>
</head>
<body>

	<h2>Añadir Publicacion</h2>

	<%-- Importar la libreria form de Spring MVC --%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


	<form:form method="post" modelAttribute="newPost">
		<form:label path="">Contenido</form:label>
		<form:input path="content" size="40" maxlength="50"/>
		<br/><br/>
		
		<form:label path="">Autor de la publicación</form:label>
		<form:input path="author" cols="30" rows="5"/>
		<br/><br/>
		
		<input type="submit" value="Subir Post" /> 
	</form:form>

</body>
</html>