<%@page
	import="pkt_citas.Tabla_Citas,pkt_citas.Citas, java.util.LinkedList,utils.Rutas"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="<%=Rutas.BootstrapURL%>"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>"/>
<title>Busqueda</title>
</head>
<body>
<%@ include file="/vistas/header.jsp"%>
<div>
<a href="#BuscarCita" id="agregarRegistro" class="btn btn-success"
			data-toggle="modal" data-target="#form-Bcita"><i
			class="material-icons">&#xE147;</i> <span>Busqueda por ID cita</span></a>
</div>



<%--############################################################### --%>
	<form action="BusquedaCita.jsp" method="post" name="sub_bcita">

		<div class="modal" id="form-Bcita">

			<div class="modal-dialog">

				<div class="modal-content">

					<div class="modal-header">
						<h2 class="modal-title">Formulario</h2>
						<button class="close" type="button" data-dismiss="modal">x</button>
					</div>



						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">ID de cita</span>
							</div>
							<input type="text" class="form-control" placeholder="# de cita"
								aria-label="Username" aria-describedby="basic-addon1"
								name="idcita" required>

						</div>

						


					<div class="modal-footer">

						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancelar</button>

						<button type="button" onclick="form_bcita();"
							class="btn btn-primary">Enviar</button>


						<input type="hidden" id="BCita" name="BCita">


					</div>



				</div>
			</div>
		</div>


	</form>

<%--############################################################### --%>



<%@ include file="/vistas/footer.jsp"%>

<script src="http://localhost:8080/pagina_web/JS/Main.js"></script>

</body>
<script src="<%=Rutas.JqueryURL%>"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="<%=Rutas.cdnBoostrapURL %>"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</html>