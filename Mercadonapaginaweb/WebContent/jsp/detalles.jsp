<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="Stylesheet" href="css/estilo.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/miscript.js"></script>
-
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h4><%=session.getAttribute("email_user")%>
		ha iniciado sesi�n
	</h4>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<img alt="logoperfil" height="150px"
					src="http://www.mipuntomap.com/wp-content/uploads/2015/07/mercadona-logo-14.jpg">
				<h1>Detalles del producto</h1>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row col-sm-12 text-center">


			<%
				ResultSet productos = (ResultSet) (request.getAttribute("producto"));
				int id = productos.getInt("id");
			%>
			<p><%=productos.getString("nombre")%></p>
			<p><%=productos.getString("peso")%>
				Gramos/Litros
			</p>
			<p><%=productos.getString("precio")%>
				Euros
			</p>
			<p><%=productos.getString("descripcion")%></p>
			<img alt="noload" src="<%=productos.getString("imagen")%>">


			<div class="row col-sm-12 text-center" id="botones">
			

				 <a href="Cesta?idp=<%=id%>&boton=ANADIR " id="anadir_producto">
					<button>A�adir a cesta</button>
				</a> 
				
				<a href="Cesta?idp=<%=id%>" name="fueracesta" id="botonvaciar">
					<button>Vaciar cesta</button>
				</a>


			</div>



		</div>




	</div>

</body>
</html>