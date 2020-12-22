
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
<title>Busqueda por medico</title>
</head>
<body>
<%@ include file="/vistas/header.jsp"%>

	

	<%
	String Bmedico=request.getParameter("idmedico");
	if(Bmedico!=null){	
	
	String medico = request.getParameter("idmedico");
	
	LinkedList<Citas> ListaCitas = Tabla_Citas.BusquedaMedico(medico);
		
	if(ListaCitas.isEmpty()){
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
					

				for (int i = 0; i < ListaCitas.size(); i++) {

					out.println("<tr>");
					out.println("<td id=\"idcita\">" + ListaCitas.get(i).getIdcita() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getIdpaciente() + "</td>");
					out.println("<td id=\"dato_fecha\">" + ListaCitas.get(i).getFecha() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getFechaConsulta() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getIdespecialidad() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getIdMedico() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getObservacion() + "</td>");
					out.println("<td>" + ListaCitas.get(i).getIdUsuario() + "</td>");
				

					out.println("</tr>");

				}
				%>
			</tbody>

		</table>


		<% 
	}
	}
	else{
	%>
	<h1>No se indicaron parametros en la busqueda</h1>
	<% 
	}
	%>
	<a href="http://localhost:8080/pagina_web/vistas/busqueda/Formulario.jsp">Realizar otra busqueda</a>
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
		

	
	