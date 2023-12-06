<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Opciones</h3>
	<nav>
		<ul>
			<li><a href="agregar.jsp">Agregar</a></li>
			<li><a href="SucursalControlador?opcion=1">Lista</a></li>
		</ul>
	</nav>
	<hr>
	<table border="1">
		<c:forEach items="${sucursales}" var="su">
			<tr>
				<td>${su.id}</td>
				<td>${su.nombre}</td>
				<td>${su.direccion}</td>
				<td>${su.comuna}</td>
				<td>${su.telefono}</td>
				<td><a href="modificar.jsp?id=${su.id}&nombre=${su.nombre}&direccion=${su.direccion}&comuna=${su.comuna}&telefono=${su.telefono}">Modificar</a></td>
				<td><a href="eliminar.jsp?id=${su.id}">Eliminar</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>


