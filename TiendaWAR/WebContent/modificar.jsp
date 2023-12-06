<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<form action="SucursalControlador" method="GET">
		<p>
			<label for="id">ID</label> 
			<input type="number" name="id" value="${param.id}" readonly>
		</p>
		<p>
			<label for="nombre">Nombre</label> 
			<input type="text" name="nombre" value="${param.nombre}" required>
		</p>
		<p>
			<label for="direccion">Direcci�n</label> 
			<input type="text" name="direccion" value="${param.direccion}" required>
		</p>
		<p>
			<label for="comuna">Comuna</label> 
			<input type="text" name="comuna" value="${param.comuna}" required>
		</p>
		<p>
			<label for="telefono">Telefono</label> 
			<input type="number" name="telefono" value="${param.telefono}" required>
		</p>
		<button type="submit" value="4" name="opcion">Modificar</button>
	</form>
</body>
</html>