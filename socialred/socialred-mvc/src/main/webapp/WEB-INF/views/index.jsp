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
		<a href="<c:url value='addPost'/>">Nuevo post</a>
		<table>
				<tr>
					<th>Id</th>
					<th>Nombre</th>
					<th>Autor</th>
					<th>Detalles</th>
					<th>Eliminar Post</th>
						</tr>

						<!-- Iterar sobre el atributo del modelo candidatos -->
						<c:forEach var="post" items="${posts}">


							<tr>
								<td>${post.id}</td>
								<td>${post.content}</td>
								<td>${post.author}</td>
								<td><a href="<c:url value='/post/${post.id}'/>">Detalles</a></td>
								<td>
									<form action="<c:url value='/delete/${post.id}'/>" method="post">  
									  <button>Eliminar</button>
									</form>
								</td>
								
							</tr>

						</c:forEach>

			</table>
</body>
</html>