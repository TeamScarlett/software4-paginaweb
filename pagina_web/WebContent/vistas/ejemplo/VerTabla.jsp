
<%@page
	import="pkt_citas.Tabla_Citas,pkt_citas.Citas, java.util.LinkedList,utils.Rutas"%>

<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>" />


<title>Tabla citas</title>
</head>

<body>

	<%@ include file="../header.jsp"%>

	<div class="container fluid" id="form_contenedor">
		<div class="card text-center">



			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-6">
							<h2>Citas medicas</h2>
						</div>
						<div class="col-sm-6">
							<a href="#addEmployeeModal" class="btn btn-success"
								data-toggle="modal" data-target="#form-cita"><i class="material-icons">&#xE147;</i> <span>Agregar</span></a>

						</div>
					</div>
				</div>
			</div>
		</div>

<form action="procesar.jsp" method="post" name="cita">
		<div class="modal" id="form-cita">
			<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title">Formulario de cita</h2>
							<button class="close" type="button" data-dismiss="modal">x</button>
						</div>
						<div class="modal-body">
						
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Paciente</span>
								</div>
								<input type="text" class="form-control" placeholder="Nombre"
									aria-label="Username" aria-describedby="basic-addon1"
									name="idpaciente" required="required">
									
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Fecha</span>
								</div>
								<input type="date" class="form-control" placeholder="Fecha"
									aria-label="Username" aria-describedby="basic-addon1"
									name="fecha" required="required">
									
							</div>
							
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Fecha consulta</span>
								</div>
								<input type="date" class="form-control" placeholder="Fecha consulta"
									aria-label="Username" aria-describedby="basic-addon1"
									name="fechaconsulta" required="required">
									
							</div>
							
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Especialidad</span>
								</div>
								<input type="text" class="form-control" placeholder="Especialidad"
									aria-label="Username" aria-describedby="basic-addon1"
									name="idespecialidad" required="required">
									
							</div>
							
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Medico</span>
								</div>
								<input type="text" class="form-control" placeholder="Nombre del medico"
									aria-label="Username" aria-describedby="basic-addon1"
									name="idmedico" required="required">
									
							</div>
							
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Observacion</span>
								</div>
								<input type="text" class="form-control" placeholder="Descripcion"
									aria-label="Username" aria-describedby="basic-addon1"
									name="observacion" required="required">
									
							</div>
							
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Usuario</span>
								</div>
								<input type="text" class="form-control" placeholder="Nombre de usuario"
									aria-label="Username" aria-describedby="basic-addon1"
									name="idusuario" required="required">
									
							</div>
							
							<div class="input-group mb-3">
							
								<input type="hidden" class="form-control" placeholder=""
									aria-label="Username" aria-describedby="basic-addon1"
									name="cita" required="required">
									
							</div>
							
							
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>
									
								<button type="submit" class="btn btn-primary">Save changes</button>
							</div>
						</div>
					</div>
				</div>s
		</div>
		
		
</form>

		<table class="table table-bordered table-hover table-dark">



				<thead>
					<tr>
						<th scope="col">Cita</th>
						<th scope="col">Paciente</th>
						<th scope="col">Fecha</th>
						<th scope="col">Fecha Consulta</th>
						<th scope="col">Especialidad</th>
						<th scope="col">Medico</th>
						<th scope="col">Observación</th>
						<th scope="col">Usuario</th>
						<th scope="col">Acciones</th>
					</tr>
				</thead>

				<tbody>
					<%
						//SE CREA LA LISTA Y SE UTILIZA EL METODO getCitas PARA OBTENER LA LISTA DE CITAS

					LinkedList<Citas> ListaCitas = Tabla_Citas.getCitas();

					for (int i = 0; i < ListaCitas.size(); i++) {

						//MIENTRAS EXISTAN REGISTROS SE OBTENDRAN POR LA POSICION Y EN LA POSICION SE IMPRIMEN LOS ATRIBUTOS
						// Y SE PUEDEN TENER INFINIDAD DE ATRIBUTOS Y SERAN DE LA POSICION i

						out.println("<tr scope=\"row\"></th>");
						out.println("<td>" + ListaCitas.get(i).getIdcita() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getIdpaciente() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getFecha() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getFechaConsulta() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getIdespecialidad() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getIdMedico() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getObservacion() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getIdUsuario() + "</td>");
						out.println("<td id=\"editar\">");
						out.println(
						"<a href=\"#editEmployeeModal\" class=\"edit\" data-toggle=\"modal\"><i class=\"material-icons\" data-toggle=\"tooltip\" title=\"Edit\">&#xE254;</i></a>\"");

						out.println("</td>");
						out.println("</tr>");

					}
					%>
				</tbody>
			</table>

	
		</div>		
<%@ include file="../footer.jsp"%>

		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

</body>