<<<<<<< HEAD

<%@page
	import="pkt_citas.Tabla_Citas,utils.Rutas"%>
	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


String idpaciente = request.getParameter("usuario");;
String fecha = request.getParameter("");
String fechaconsulta = request.getParameter("");
String especialidad = request.getParameter("");
String idmedico = request.getParameter("");
String observacion = request.getParameter("");
String idusuario = request.getParameter("");


Tabla_Citas.AgregarCita(idpaciente, fecha, fechaconsulta, especialidad, idmedico, observacion, idusuario);

%>


</body>
=======

<%@page
	import="pkt_citas.Tabla_Citas,utils.Rutas"%>
	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


String idpaciente = request.getParameter("usuario");;
String fecha = request.getParameter("");
String fechaconsulta = request.getParameter("");
String especialidad = request.getParameter("");
String idmedico = request.getParameter("");
String observacion = request.getParameter("");
String idusuario = request.getParameter("");


Tabla_Citas.AgregarCita(idpaciente, fecha, fechaconsulta, especialidad, idmedico, observacion, idusuario);

%>


</body>
>>>>>>> 81575d4d847e790e6c14d98f434b8449927bbd09
</html>