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
<title>Más opciones</title>
</head>
<body>
<%@ include file="header.jsp"%>

<div class="container fluid">

<a class="btn btn-primary" href="http://localhost:8080/pagina_web/vistas/signos_vitales/VerTablaSignosVitales.jsp" role="button">Signos vitales</a>
<a class="btn btn-primary" href="http://localhost:8080/pagina_web/vistas/sintomas/VerTablaSintomas.jsp" role="button">Sintomas</a>
<a class="btn btn-primary" href="http://localhost:8080/pagina_web/vistas/diagnostico/VerTablaDiagnosticos.jsp" role="button">Diagnosticos</a>
<a class="btn btn-primary" href="http://localhost:8080/pagina_web/vistas/recetas/VerTablaRecetas.jsp" role="button">Recetas</a>
<a class="btn btn-primary" href="http://localhost:8080/pagina_web/vistas/laboratorios/VerTablaLab.jsp" role="button">Laboratorios</a>
<a class="btn btn-primary" href="http://localhost:8080/pagina_web/vistas/especialidades/VerTablaEspecialidades.jsp" role="button">Especialidades</a>

</div>


<%@ include file="footer.jsp"%>

</body>
<script src="<%=Rutas.JqueryURL%>"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="<%=Rutas.cdnBoostrapURL %>"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</html>