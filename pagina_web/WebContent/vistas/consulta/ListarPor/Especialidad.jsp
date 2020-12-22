
<%@page
	import="pkt_consultas.Tabla_Consultas, pkt_consultas.Consultas, java.util.LinkedList, utils.Rutas"%>

<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" href="<%=Rutas.BootstrapURL%>" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>" />

<link rel="preconnect" href="https://fonts.gstatic.com">

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300&display=swap" rel="stylesheet">


<title>Listado por Especialidad</title>
</head>

<body>

	<%@ include file="/vistas/header.jsp"%>




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
						

					LinkedList<Consultas> ListaConsultas = Tabla_Consultas.ListarConsultas(1);

					for (int i = 0; i < ListaConsultas.size(); i++) {


						out.println("<tr>");
						out.println("<td>" + ListaConsultas.get(i).getIdconsulta() + "</td>");
						out.println("<td>" + ListaConsultas.get(i).getPaciente()+ "</td>");
						out.println("<td>" + ListaConsultas.get(i).getFecha() + "</td>");
						out.println("<td>" + ListaConsultas.get(i).getMedico() + "</td>");
						out.println("<td>" + ListaConsultas.get(i).getObservacion() + "</td>");					
						out.println("</tr>");

					}
					%>
				</tbody>
			
			</table>
			
<a href="http://localhost:8080/pagina_web/vistas/consulta/VerTablaConsulta.jsp">Regresar a consultas</a>
<a href="http://localhost:8080/pagina_web/vistas/index.jsp">Regresar a inicio</a>
		<%-- ############################################################## --%>

		
<%@ include file="/vistas/footer.jsp"%>

<script src="http://localhost:8080/pagina_web/JS/Main.js"></script>

		<script src="<%=Rutas.JqueryURL%>"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="<%=Rutas.cdnBoostrapURL %>"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

</body>
</html>