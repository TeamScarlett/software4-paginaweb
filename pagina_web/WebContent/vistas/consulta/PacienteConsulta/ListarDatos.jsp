<%@page import="pkt_consulta_recetas.Consulta_recetas"%>
<%@page import="pkt_consulta_laboratorio.Consulta_laboratorio"%>
<%@page
	import="pkt_consultas.*, pkt_consulta_diagnostico.*, 
	pkt_consulta_laboratorio.Tabla_Consulta_laboratorio, pkt_consulta_recetas.Tabla_Consulta_recetas, 
	pkt_consulta_signos_vitales.* , java.util.LinkedList, utils.Rutas"%>


<%
	int id = Integer.valueOf(request.getParameter("_idconsulta"));
Consultas consulta = new Consultas();
consulta = Tabla_Consultas.obtenerDatos(id);
if(consulta.getIdconsulta()!=0){
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="<%=Rutas.BootstrapURL%>"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>" />
<title>Datos del paciente <%=consulta.getPaciente()%></title>
</head>
<body>
	<%@ include file="/vistas/header.jsp"%>
	<h2 id="titulo_tabla">Datos de consulta</h2>

	<table id="listado" class="table table-bordered table-hover table-dark">



		<thead>
			<tr>
				<th scope="col">ID consulta</th>
				<th scope="col">Paciente</th>
				<th scope="col">Fecha</th>
				<th scope="col">Medico</th>
				<th scope="col">Observacion</th>

			</tr>
		</thead>

		<tbody>

			<%
				out.println("<tr>");
			out.println("<td>" + consulta.getIdconsulta() + "</td>");
			out.println("<td>" + consulta.getPaciente() + "</td>");
			out.println("<td>" + consulta.getFecha() + "</td>");
			out.println("<td>" + consulta.getMedico() + "</td>");
			out.println("<td>" + consulta.getObservacion() + "</td>");
			%>
		</tbody>
	</table>
<h2>Consulta Diagnosticos</h2>
	<table id="listado" class="table table-bordered table-hover table-dark">



		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Id Consulta</th>
				<th scope="col">Diagnostico</th>
				<th scope="col">Observacion</th>
			</tr>
		</thead>

		<tbody>


			<%
				Consulta_diagnostico consulta_diag = new Consulta_diagnostico();
			consulta_diag = Tabla_Consulta_diagnostico.ConsultarDatos(id);
			if (consulta_diag.getIdconsulta() != 0) {

				out.println("<tr>");
				out.println("<td>" + consulta_diag.getId() + "</td>");
				out.println("<td>" + consulta_diag.getIdconsulta() + "</td>");
				out.println("<td>" + consulta_diag.getIddiagnostico() + "</td>");
				out.println("<td>" + consulta_diag.getObservacion() + "</td>");
				out.println("</tr>");
			%>
		</tbody>
	</table>

	<%
		} else {
	%>
	<h1>No se encontraron datos de diagnostico</h1>
	<%
		}
	%>
<h2>Consulta Recetas</h2>

	<table id="listado" class="table table-bordered table-hover table-dark">



		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Id Consulta</th>
				<th scope="col">Receta</th>
				<th scope="col">Otro</th>
			</tr>
		</thead>
		<tbody>

			<%
				Consulta_laboratorio consulta_lab = new Consulta_laboratorio();
			consulta_lab = Tabla_Consulta_laboratorio.ConsultarDatos(id);
			if (consulta_lab.getIdconsulta() != 0) {
				out.println("<tr>");
				out.println("<td>" + consulta_lab.getId() + "</td>");
				out.println("<td>" + consulta_lab.getIdconsulta() + "</td>");
				out.println("<td>" + consulta_lab.getIdreceta() + "</td>");
				out.println("<td>" + consulta_lab.getOtro() + "</td>");
			%>
		</tbody>


	</table>
	<%
		} else {
	%>
	<h1>No se encontraron datos de laboratorios</h1>
	<%
		}
	%>

<h2>Consulta de recetas</h2>
	<table id="listado" class="table table-bordered table-hover table-dark">



		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Id Consulta</th>
				<th scope="col">Id Recetas</th>
				<th scope="col">Otro</th>

			</tr>
		</thead>
		<tbody>
			<%
				Consulta_recetas consulta_rec = new Consulta_recetas();
			consulta_rec = Tabla_Consulta_recetas.ConsultarDatos(id);
			if (consulta_rec.getIdconsulta() != 0) {
				out.println("<tr>");
				out.println("<td>" + consulta_rec.getId() + "</td>");
				out.println("<td>" + consulta_rec.getIdconsulta() + "</td>");
				out.println("<td>" + consulta_rec.getIdrecetas() + "</td>");
				out.println("<td>" + consulta_rec.getOtro() + "</td>");
				out.println("</tr>");
			%>


		</tbody>

	</table>
	<%
		} else {
	%>
	<h1>No se encontraron datos de recetas</h1>
	<%
		}
	%>
	<h2>Consulta Signos Vitales</h2>
	<table id="listado" class="table table-bordered table-hover table-dark">



				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Id Consulta</th>
						<th scope="col">Signo Vital</th>
						<th scope="col">Valor</th>
						<th scope="col">Modificar</th>
						<th scope="col">Eliminar</th>
					</tr>
				</thead>
				<tbody>
				<%
				Consulta_signos_vitales consulta_signos_vit = new Consulta_signos_vitales();
				consulta_signos_vit = Tabla_Consulta_signos_vitales.ConsultarDatos(id);
				if(consulta_signos_vit.getIdconsulta()!=0){
				out.println("<tr>");
				out.println("<td>" + consulta_signos_vit.getId() + "</td>");
				out.println("<td>" + consulta_signos_vit.getIdconsulta() + "</td>");
				out.println("<td>" + consulta_signos_vit.getIdsigno_vital() + "</td>");
				out.println("<td>" + consulta_signos_vit.getValor() + "</td>");
				out.println("</tr>");
				
				
				
				%>
				</tbody>
				</table>
					<%
		} else {
	%>
	<h1>No se encontraron datos de signos vitales</h1>
	<%
		}
}else{
	%>
	<h1>No hay datos para el paciente</h1>
	<%
}
	%>





	<%@ include file="/vistas/footer.jsp"%>

</body>
<script src="<%=Rutas.JqueryURL%>"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script src="<%=Rutas.cdnBoostrapURL%>"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
</html>