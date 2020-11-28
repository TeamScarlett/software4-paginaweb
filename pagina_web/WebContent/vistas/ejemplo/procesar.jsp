

<%@page
	import="modelos.ModeloAgregar ,utils.Rutas"%>
	
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
String idpaciente = request.getParameter("idpaciente");
String opcion=request.getParameter("cita");
log(opcion);
boolean Verificar=false;
switch(opcion){
case "cita":
	int idcita = Integer.valueOf(request.getParameter("idcicta"));
	String idpaciente2 = request.getParameter("usuario");
	String fecha = request.getParameter("fecha");
	String fechaconsulta = request.getParameter("fechaconsulta");
	int idespecialidad = Integer.valueOf(request.getParameter(""));
	String idmedico = request.getParameter("");
	String observacion = request.getParameter("");
	int idusuario = Integer.valueOf(request.getParameter(""));


	ModeloAgregar nuevaCita = new ModeloAgregar();
	Verificar = nuevaCita.AgregarCita(idcita, idpaciente, fecha, fechaconsulta, idespecialidad, idmedico, observacion, idusuario);
	out.print("Se agrego");
	break;
case "consulta":
	
	break;
	

}
if(Verificar){
	
}




%>

<%
session.setMaxInactiveInterval(2);
%>

 <script type="text/javascript">
var Msg ='<%=session.getAttribute("getAlert")%>';
    if (Msg != "null") {
 function alertName(){
 alert("Form has been submitted");
 } 
 }
 </script> 

<script type="text/javascript">
function alertName(){
alert("Form has been submitted");
} 
</script> 
<script type="text/javascript"> window.onload = alertName; </script>


</body>