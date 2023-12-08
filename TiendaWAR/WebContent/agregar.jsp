<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			<input type="number" name="id" required>
		</p>
		<p>
			<label for="nombre">Nombre</label> 
			<input type="text" name="nombre" required>
		</p>
		<p>
			<label for="direccion">Dirección</label> 
			<input type="text" name="direccion" required>
		</p>
		<p>
			<label for="comuna">Comuna</label> 
			<input type="text" name="comuna" required>
		</p>
		<p>
			<label for="telefono">Telefono</label> 
			<input type="number" name="telefono" required>
		</p>
		<button type="submit" value="2" name="opcion">Agregar</button>
	</form>
	${mensaje}
</body>
</html>


