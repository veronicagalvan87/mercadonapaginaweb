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

	<h4><%=session.getAttribute("email_user")%>
		ha iniciado sesi�n
	</h4>

	<div class="row">
		<div class="col-sm-12 text-center">
			<img alt="logoperfil" height="150px"
				src="http://www.mipuntomap.com/wp-content/uploads/2015/07/mercadona-logo-14.jpg">
			<h1>Bienvenido a tu Perfil</h1>
			<h2>�Qu� quieres hacer?</h2>

			<div class="row">
				<div class="col-sm-6 text-center">

					<a href="GestionProductos" id="botonproductos">

						<button name="listaproductos">Lista Productos</button>

					</a>


				</div>

				<div class="col-sm-6 text-center">

					<a href="Cesta?boton=VERCESTA">
						<button name="listapedidos" id="botonpedidos">Ver Cesta</button>

					</a>
				</div>
			</div>

		</div>
	</div>

</body>
</html>