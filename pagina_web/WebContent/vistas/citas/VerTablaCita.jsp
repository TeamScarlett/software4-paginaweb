
<%@page
	import="pkt_citas.Tabla_Citas,pkt_citas.Citas, java.util.LinkedList,utils.Rutas"%>

<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" href="<%=Rutas.BootstrapURL%>"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>" />

<link rel="preconnect" href="https://fonts.gstatic.com">

<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300&display=swap"
	rel="stylesheet">


<title>Tabla citas</title>
</head>

<body>

	<%@ include file="../header.jsp"%>

	<div class="container fluid" id="form_contenedor">


		<h2 id="titulo_tabla">Citas medicas</h2>
		
	<div>		
	<a class="btn btn-primary" href="http://localhost:8080/pagina_web/vistas/busqueda/Formulario.jsp" role="button">Busqueda</a>
		</div>	
		



		<table id="listado" class="table table-hover table-dark">



			<thead>
				<tr>
					<th scope="col">Cita</th>
					<th scope="col">Paciente</th>
					<th scope="col">Fecha</th>
					<th scope="col">Fecha Consulta</th>
					<th scope="col">Especialidad</th>
					<th scope="col">Medico</th>
					<th scope="col">Observacion</th>
					<th scope="col">Usuario</th>
					<th scope="col">Modificar</th>
					<th scope="col">Eliminar</th>
				</tr>
			</thead>

			<tbody>
				<%
					LinkedList<Citas> ListaCitas = Tabla_Citas.getCitas();

				for (int i = 0; i < ListaCitas.size(); i++) {

					out.println("<tr scope=\"row\"></th>");
					out.println("<td id=\"idcita\">" + ListaCitas.get(i).getIdcita() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getIdpaciente() + "</td>");
					out.println("<td id=\"dato_fecha\">" + ListaCitas.get(i).getFecha() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getFechaConsulta() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getIdespecialidad() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getIdMedico() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getObservacion() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getIdUsuario() + "</td>");
					out.println("<td id=\"editar\">");
					out.println(

					"<a href=\"#editarRegistro\" class=\"edit\" id=\"btn_edit\" data-toggle=\"modal\" data-target=\"#form-edit\">");

					out.print(
					"<svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-pencil-square\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">");
					out.print(
					"<path d=\"M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z\"/>");
					out.print(
					"<path fill-rule=\"evenodd\" d=\"M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z\"/>");
					out.println("</svg>");
					out.print("Editar</a>");
					out.println("</td>");

					out.println("<td id=\"eliminar\">");
					out.println(

					"<a href=\"#eliminarRegistro\" class=\"edit\" id=\"btn_del\" data-toggle=\"modal\" data-target=\"#form-del\">");

					out.print(
					"<svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-journal-x\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">");
					out.print(
					"<path d=\"M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z\"/>");
					out.print(
					"<path d=\"M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z\"/>");
					out.print(
					"<path fill-rule=\"evenodd\" d=\"M6.146 6.146a.5.5 0 0 1 .708 0L8 7.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 8l1.147 1.146a.5.5 0 0 1-.708.708L8 8.707 6.854 9.854a.5.5 0 0 1-.708-.708L7.293 8 6.146 6.854a.5.5 0 0 1 0-.708z\"/>");
					out.print("</svg>");
					out.println("Eliminar</a>");
					out.println("</td>");

					out.println("</tr>");

				}
				%>
			</tbody>

		</table>


		<a href="#aņadirRegistro" id="agregarRegistro" class="btn btn-success"
			data-toggle="modal" data-target="#form-add"><i
			class="material-icons">&#xE147;</i> <span>Agregar</span></a>

	</div>

	<%-- ############################################################## --%>

	<form action="ProcesarCita.jsp" method="post" name="sub_add">

		<div class="modal" id="form-add">

			<div class="modal-dialog">

				<div class="modal-content">

					<div class="modal-header">
						<h2 class="modal-title">Formulario de cita</h2>
						<button class="close" type="button" data-dismiss="modal">x</button>
					</div>


					<div class="modal-body">

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Cita</span>
							</div>
							<input type="text" id="cita" class="form-control"
								placeholder="# de cita" aria-label="Username"
								aria-describedby="basic-addon1" name="add_idcita"
								required="required">

						</div>


						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Paciente</span>
							</div>
							<input type="text" class="form-control" placeholder="Nombre"
								aria-label="Username" aria-describedby="basic-addon1"
								name="add_idpaciente" required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Fecha</span>
							</div>
							<input type="date" class="form-control" placeholder="Fecha"
								aria-label="Username" aria-describedby="basic-addon1"
								name="add_fecha" required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Fecha
									consulta</span>
							</div>
							<input type="date" class="form-control"
								placeholder="Fecha consulta" aria-label="Username"
								aria-describedby="basic-addon1" name="add_fechaconsulta"
								required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Especialidad</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Especialidad" aria-label="Username"
								aria-describedby="basic-addon1" name="add_idespecialidad"
								required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Medico</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Nombre del medico" aria-label="Username"
								aria-describedby="basic-addon1" name="add_idmedico"
								required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Observacion</span>
							</div>
							<input type="text" class="form-control" placeholder="Descripcion"
								aria-label="Username" aria-describedby="basic-addon1"
								name="add_observacion" required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Usuario</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Nombre de usuario" aria-label="Username"
								aria-describedby="basic-addon1" name="add_idusuario"
								required="required">



						</div>

					</div>



					<div class="modal-footer">

						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancelar</button>

						<button type="button" onclick="form_add();"
							class="btn btn-primary">Enviar</button>


						<input type="hidden" id="add" name="add">


					</div>



				</div>
			</div>
		</div>


	</form>

	<%-- ############################################################## --%>

	<%--  FORMULARIO DE MODIFICAR--%>
	<form action="ProcesarCita.jsp" name="sub_edit" method="post">

		<div class="modal" id="form-edit">

			<div class="modal-dialog">

				<div class="modal-content">


					<div class="modal-header">
						<h2 class="modal-title">Editar cita</h2>
						<button class="close" type="button" data-dismiss="modal">x</button>
					</div>


					<div class="modal-body">

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Cita</span>
							</div>
							<input type="text" class="form-control" placeholder="# de cita"
								id="data_edit0" aria-label="Username"
								aria-describedby="basic-addon1" name="edit_idcita"
								required="required">

						</div>


						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Paciente</span>
							</div>
							<input type="text" class="form-control" placeholder="Nombre"
								id="data_edit1" aria-label="Username"
								aria-describedby="basic-addon1" name="edit_idpaciente"
								required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Fecha</span>
							</div>
							<input type="date" class="form-control" placeholder="Fecha"
								id="data_edit2" aria-label="Username"
								aria-describedby="basic-addon1" name="edit_fecha"
								required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Fecha
									consulta</span>
							</div>
							<input type="date" class="form-control"
								placeholder="Fecha consulta" id="data_edit3"
								aria-label="Username" aria-describedby="basic-addon1"
								name="edit_fechaconsulta" required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Especialidad</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Especialidad" id="data_edit4" aria-label="Username"
								aria-describedby="basic-addon1" name="edit_idespecialidad"
								required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Medico</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Nombre del medico" id="data_edit5"
								aria-label="Username" aria-describedby="basic-addon1"
								name="edit_idmedico" required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Observacion</span>
							</div>
							<input type="text" class="form-control" placeholder="Descripcion"
								id="data_edit6" aria-label="Username"
								aria-describedby="basic-addon1" name="edit_observacion"
								required="required">

						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Usuario</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Nombre de usuario" id="data_edit7"
								aria-label="Username" aria-describedby="basic-addon1"
								name="edit_idusuario" required="required">

						</div>


					</div>

					<div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancelar</button>

							<button type="button" onclick="form_edit();"
								class="btn btn-primary">Enviar</button>

							<input type="hidden" id="edit" name="edit">

						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<%-- ############################################################## --%>



	<%-- ############################################################## --%>

	<%--  FORMULARIO DE ELIMINAR--%>
	<form action="procesar.jsp" method="post">
		<div class="modal" id="form-del">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h2 class="modal-title">Eliminar cita</h2>
						<button class="close" type="button" data-dismiss="modal">x</button>
					</div>
					<div class="modal-body">

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Cita</span>
							</div>
							<input type="text" class="form-control" placeholder="# de cita"
								id="data_del0" aria-label="Username"
								aria-describedby="basic-addon1" name="del_idcita"
								required="required">

						</div>


						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text" id="basic-addon1">Paciente</span>
							</div>
							<input type="text" class="form-control" placeholder="Nombre"
								id="data_del1" aria-label="Username"
								aria-describedby="basic-addon1" name="del_idpaciente"
								required="required">

						</div>



					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancelar</button>

						<button type="button" onclick="form_del();"
							class="btn btn-primary">Enviar</button>

						<input type="hidden" id="del" name="del">

					</div>



				</div>
			</div>
		</div>

	</form>

	<%-- ############################################################## --%>

	<%@ include file="../footer.jsp"%>

	<script src="http://localhost:8080/pagina_web/JS/Main.js"></script>

	<script src="<%=Rutas.JqueryURL%>"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script src="<%=Rutas.cdnBoostrapURL%>"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

</body>
</html>
