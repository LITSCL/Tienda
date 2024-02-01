<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
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
			<label for="direccion">Dirección</label> 
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