<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="Stylesheet" href="css/estilo.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/miscript.js"></script>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<img alt="Logomercadona" height="150px"
					src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif">
			</div>
		</div>

		<div class="row">
			<div class="col-sm-6 text-center">

				<button id="botonlogin">Login</button>
				<form action="Login" method="post" id="logearse">

					<p>
						<input name="email" type="text" placeholder="email">
					</p>
					<p>
						<input name="password" type="password" placeholder="password">
					</p>
					<p>
						<br> <input name="logearse" type="submit" value="Enviar">
					</p>

				</form>

			</div>
			<div class="col-sm-6 text-center">

				<button id="botonusurionuevo">Registrar</button>
				<form action="Login" method="post" id="registrarse">
					<br>
					<p>
						<input name="nombre" type="Text" placeholder="Nombre">
					</p>
					<p>
						<input name="apellido" type="Text" placeholder="Apellido">
					</p>
					<p>
						<input name="fechanacimiento" type="Date"
							placeholder="aaaa-mm-dd">
					</p>
					<p>
						<input name="email" type="Text" placeholder="Email">
					</p>
					<p>
					<input name="usuario" type="Text" placeholder="usuario">
					</p>
					
					<p>
						 <input name="contrasena" type="password"
							placeholder="password">
					</p>
					<p>
						<br> <input name="registrarse" type="Submit" value="Enviar">
					</p>
				</form>
			</div>
		</div>
	</div>

</body>
</html>