<%@page import="pkt_citas.Tabla_Citas , pkt_clases.Citas , java.util.LinkedList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabla citas</title>
</head>
<body>

<table border="1">
  <tr>
    
    <th>cita</th>
    <th>paciente</th>
    <th>fecha</th>
    <th>fecha consulta</th>
    <th>especialidad</th>
    <th>medico</th>
    <th>observacion</th>
    <th>usuario</th>
  </tr>
  <%
  LinkedList<Citas> ListaCitas = Tabla_Citas.getCitas();
  for(int i=0;i<ListaCitas.size();i++){
	  out.println("<tr>");
	  out.println("<td>"+ListaCitas.get(i).getIdcita()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getIdpaciente()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getFecha()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getFechaConsulta()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getIdespecialidad()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getIdMedico()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getObservacion()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getIdUsuario()+"</td>");
  }

  %>

</table>

</body>
</html>