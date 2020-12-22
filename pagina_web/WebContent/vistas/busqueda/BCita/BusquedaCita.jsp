
<%@page
	import="pkt_citas.Citas ,pkt_citas.Tabla_Citas ,java.util.LinkedList,utils.Rutas"%>
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
<title>Busqueda por paciente</title>
</head>
<body>
<%@ include file="/vistas/header.jsp"%>

	

	<%
	String BCita=request.getParameter("BCita");
	if(BCita!=null){	
	
	String idcita = request.getParameter("idcita");
	
	Citas cita = new Citas();
	cita = Tabla_Citas.ObtenerCita(Integer.valueOf(idcita));
		
	if(cita.getIdcita()==0){
		%>
		<h1>Los datos no fueron encontrados</h1>
		<% 
	}else{
		%>
		


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
				</tr>
			</thead>

			<tbody>
				<%
					

				

					out.println("<tr>");
					out.println("<td>" + cita.getIdcita() + "</td>");
					out.println("<td>" + cita.getIdpaciente() + "</td>");
					out.println("<td>" + cita.getFecha() + "</td>");
					out.println("<td>" + cita.getFechaConsulta() + "</td>");
					out.println("<td>" + cita.getIdespecialidad() + "</td>");
					out.println("<td>" + cita.getIdMedico() + "</td>");
					out.println("<td>" + cita.getObservacion() + "</td>");
					out.println("<td>" + cita.getIdUsuario() + "</td>");
				

					out.println("</tr>");

				
	
				%>
			</tbody>

		</table>


		<% 
	
	}
	}else{
		%>
		<h1>No se indicaron parametros en la busqueda</h1>
		<% 
	
	}
	
	%>
	
	
	
	
	<a href="http://localhost:8080/pagina_web/vistas/busqueda/BCita/FormularioCita.jsp">Realizar otra busqueda</a>
	<a href="http://localhost:8080/pagina_web/vistas/index.jsp">Volver a inicio</a>
	<%@ include file="/vistas/footer.jsp"%>

</body>
<script src="<%=Rutas.JqueryURL%>"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="<%=Rutas.cdnBoostrapURL %>"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</html>
		

	