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
<%@ include file="../header.jsp"%>
<div>
<a href="#BuscarRegistroPaciente" id="agregarRegistro" class="btn btn-success"
			data-toggle="modal" data-target="#form-paciente"><i
			class="material-icons">&#xE147;</i> <span>Busqueda por paciente</span></a>
</div>
<div>
<a href="#BuscarRegistroMedico" id="agregarRegistro" class="btn btn-success"
			data-toggle="modal" data-target="#form-medico"><i
			class="material-icons">&#xE147;</i> <span>Busqueda por medico</span></a>
</div>



<%--############################################################### --%>
	<form action="BPaciente/BusquedaPaciente.jsp" method="post" name="sub_paciente">

		<div class="modal" id="form-paciente">

			<div class="modal-dialog">

				<div class="modal-content">

					<div class="modal-header">
						<h2 class="modal-title">Formulario busqueda paciente</h2>
						<button class="close" type="button" data-dismiss="modal">x</button>
					</div>



						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Paciente</span>
							</div>
							<input type="text" class="form-control" placeholder="Nombre"
								aria-label="Username" aria-describedby="basic-addon1"
								name="idpaciente" required>

						</div>

						


					<div class="modal-footer">

						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancelar</button>

						<button type="button" onclick="form_paciente();"
							class="btn btn-primary">Enviar</button>


						<input type="hidden" id="Bpaciente" name="Bpaciente">


					</div>



				</div>
			</div>
		</div>


	</form>

<%--############################################################### --%>
	<form action="BMedico/BusquedaMedico.jsp" method="post" name="sub_medico">

		<div class="modal" id="form-medico">

			<div class="modal-dialog">

				<div class="modal-content">

					<div class="modal-header">
						<h2 class="modal-title">Formulario de busqueda medico</h2>
						<button class="close" type="button" data-dismiss="modal">x</button>
					</div>


					<div class="modal-body">

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Medico</span>
							</div>
							<input type="text" class="form-control" placeholder="Nombre"
								aria-label="Username" aria-describedby="basic-addon1"
								name="idmedico" required>

						</div>		

					</div>



					<div class="modal-footer">

						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancelar</button>

						<button type="button" onclick="form_medico();"
							class="btn btn-primary">Enviar</button>


						<input type="hidden" id="Bmedico" name="Bmedico">


					</div>



				</div>
			</div>
		</div>


	</form>


<%@ include file="../footer.jsp"%>

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