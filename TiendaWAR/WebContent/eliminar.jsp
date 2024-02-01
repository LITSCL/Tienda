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
	<p>ID a eliminar: ${param.id}</p>
	<p>¿Estas seguro que deseas eliminar la sucursal?</p>
	<a href="SucursalControlador?id=${param.id}&opcion=3">Si</a>
	<a href="index.html">No</a>
</body>
</html>

