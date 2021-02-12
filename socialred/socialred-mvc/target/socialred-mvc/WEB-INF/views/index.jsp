<%@ page language='java' contentType='text/html'
         isErrorPage='false' isELIgnored='false' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Socialred - index</title>
<link href="<c:url value="/resources/css/styles.css" />"
	rel="stylesheet">
</head>
<body>
		<h2>Gestion Categorias</h2>
		<hr />
		<a href="<c:url value='/'/>">Inicio</a>
		<a href="<c:url value='/productos'/>">Lista de todos los posts</a>
		<table>
				<tr>
					<th>Id</th>
					<th>Nombre</th>
					<th>Productos categoria</th>
						</tr>

						<!-- Iterar sobre el atributo del modelo candidatos -->
						<c:forEach var="post" items="${posts}">


							<tr>
								<td>${post.id}</td>
								<td>${post.content}</td>
								<td>${post.author}</td>
							</tr>

						</c:forEach>

			</table>
</body>
</html>