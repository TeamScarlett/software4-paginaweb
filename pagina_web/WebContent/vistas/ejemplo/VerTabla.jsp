
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page
	import="pkt_citas.Tabla_Citas,pkt_citas.Citas, java.util.LinkedList,utils.Rutas"%>

<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet"
	href="<%=Rutas.BootstrapURL%>"
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

<form action="procesar.jsp" method="post">
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
									<span class="input-group-text" id="basic-addon1">Cita</span>
								</div>
								<input type="text" class="form-control" placeholder="# de cita"
									aria-label="Username" aria-describedby="basic-addon1"
									name="idcita" required="required">
									
							</div>
						
						
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
							
							
							
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>
									
								<button type="submit" class="btn btn-primary">Enviar</button>
							</div>
						</div>
					</div>
				</div>
		</div>
		

</form>
		<table id="listado" class="table table-bordered table-hover table-dark">



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
						<th scope="col">Modificar</th>
						<th scope="col">Eliminar</th>
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
						out.println("<td id=\"idcitaedit\">" + ListaCitas.get(i).getIdcita() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getIdpaciente() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getFecha() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getFechaConsulta() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getIdespecialidad() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getIdMedico() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getObservacion() + "</td>");
						out.println("<td>" + ListaCitas.get(i).getIdUsuario() + "</td>");
						out.println("<td id=\"editar\">");
						out.println(
						"<a href=\"#editEmployeeModal\" class=\"edit\" data-toggle=\"modal\" data-target=\"#form-edit\">"); 
						out.print("<svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-pencil-square\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">");
						out.print("<path d=\"M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z\"/>");
						out.print("<path fill-rule=\"evenodd\" d=\"M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z\"/>");
						out.println("</svg>");
						out.print("Editar</a>");
						out.println("</td>");
						
						out.println("<td id=\"eliminar\">");
						out.println(
								"<a href=\"#editEmployeeModal\" class=\"edit\" data-toggle=\"modal\" data-target=\"#form-edit\">"); 
						out.print("<svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-journal-x\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">"); 
						out.print("<path d=\"M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z\"/>");
						out.print("<path d=\"M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z\"/>");		
						out.print("<path fill-rule=\"evenodd\" d=\"M6.146 6.146a.5.5 0 0 1 .708 0L8 7.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 8l1.147 1.146a.5.5 0 0 1-.708.708L8 8.707 6.854 9.854a.5.5 0 0 1-.708-.708L7.293 8 6.146 6.854a.5.5 0 0 1 0-.708z\"/>");
						out.print("</svg>");
						out.println("Eliminar</a>");
						out.println("</td>");
						
						out.println("</tr>");

					}
					%>
				</tbody>
			
			</table>
		<%-- ############################################################## --%>

		<%--  FORMULARIO DE MODIFICAR--%>
		<form action="procesar.jsp" method="post">
			<div class="modal" id="form-edit">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title">Editar cita</h2>
							<button class="close" type="button" data-dismiss="modal">x</button>
						</div>
						<div class="modal-body">

							<div class="form-group">
								<label for="Cita">Numero de cita</label> <input
									readonly class="form-control-plaintext" id="form_cita_NoCita" type="text" required>
							</div>
							<div class="form-group">
								<label for="Paciente">Nombre del paciente</label> <input
									id="form_cita_Pname" type="text" class="form-control" required>
							</div>

							<div class="form-group">
								<label for="fecha">Fecha de hoy</label> <input
									id="form_cita_fecha" type="text" class="form-control" required>
							</div>

							<div class="form-group">
								<label for="fecha_consulta">Fecha de la consulta</label> <input
									id="form_cita_fechaConsulta" type="text" class="form-control"
									required>
							</div>

							<div class="form-group">
								<label for="Cita"> Depart. Especialidad</label> <input
									id="form_cita_especialidad" type="text" class="form-control"
									required>
							</div>

							<div class="form-group">
								<label for="medico">Nombre del medico</label> <input
									id="form_cita_medico" type="text" class="form-control" required>
							</div>

							<div class="form-group">
								<label for="Cita">Observacion</label>
								<textarea id="form_cita_observacion"
									class="form-control rounded-0" rows="3" required></textarea>
							</div>

							<div class="form-group">
								<label for="medico">Usuario</label> <input id="form_cita_user"
									type="text" class="form-control" required>
					
							</div>
							
						
							

							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>

								<button type="submit" onclick="<%Rutas.opcion="editar";%>" class="btn btn-primary">Enviar</button>
							</div>
						</div>
					</div>
				</div>
			</div>



		</form>

		<%-- ############################################################## --%>



		<%-- ############################################################## --%>

		<%--  FORMULARIO DE ELIMINAR--%>
		<form action="Upd_Del.jsp" method="post">
			<div class="modal" id="form-edit">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title">Eliminar cita</h2>
							<button class="close" type="button" data-dismiss="modal">x</button>
						</div>
						<div class="modal-body">

							

							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>

								<button type="submit" class="btn btn-primary">Enviar</button>
							</div>
						</div>
					</div>
				</div>
			</div>



		</form>

		<%-- ############################################################## --%>


	</div>		
		
<%@ include file="../footer.jsp"%>
<script>


function selectRow(){
    var rindex, table = document.getElementById("listado");
    for(var i=1;i<table.rows.length;i++){
        table.rows[i].onclick = function(){
          rindex  = this.rowIndex;
          console.log(rindex);
          document.getElementById("form_cita_NoCita").value = this.cells[0].innerHTML;
          document.getElementById("form_cita_Pname").value = this.cells[1].innerHTML;
          document.getElementById("form_cita_fecha").value = this.cells[2].innerHTML;
          document.getElementById("form_cita_fechaConsulta").value = this.cells[3].innerHTML;
          document.getElementById("form_cita_especialidad").value = this.cells[4].innerHTML;
          document.getElementById("form_cita_medico").value = this.cells[5].innerHTML;
          document.getElementById("form_cita_observacion").value = this.cells[6].innerHTML;
          document.getElementById("form_cita_user").value = this.cells[7].innerHTML;
          
        };
    }
}

selectRow();
</script>

		<script src="<%=Rutas.JqueryURL%>"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="<%=Rutas.cdnBoostrapURL %>"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

</body>
</html>