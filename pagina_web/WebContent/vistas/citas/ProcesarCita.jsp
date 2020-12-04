
<%@page
	import="Modelo.ModeloCitas"%>

<%
String add =request.getParameter("add");

if(add != null){
	out.println("add");
	int add_idcita= Integer.valueOf(request.getParameter("add_paciente"));
	String add_idpaciente = request.getParameter("add_idpaciente");
	String add_fecha = request.getParameter("add_fecha");
	String add_fechaconsulta = request.getParameter("add_fechaconsulta");
	int add_idespecialidad = Integer.valueOf(request.getParameter("add_idespecialidad"));
	String add_idmedico = request.getParameter("add_idmedico");
	String add_observacion = request.getParameter("add_observacion");
	int add_idusuario = Integer.valueOf(request.getParameter("add_idusuario"));
	ModeloCitas Modelo = new ModeloCitas();
	if(Modelo.AgregarCita(add_idcita, add_idpaciente, add_fecha, add_fechaconsulta,add_idespecialidad, add_idmedico, add_observacion,add_idusuario)){	
	 response.sendRedirect("VerTablaCita.jsp");
	}
}

String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_idcita = Integer.valueOf(request.getParameter("del_idcita"));
	ModeloCitas Modelo = new ModeloCitas();
	if(Modelo.EliminarCita(del_idcita)){
		 response.sendRedirect("VerTablaCita.jsp");
	}
}


String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_idcita= Integer.valueOf(request.getParameter("edit_idcita"));
	String edit_idpaciente = request.getParameter("edit_idpaciente");
	String edit_fecha = request.getParameter("edit_fecha");
	String edit_fechaconsulta = request.getParameter("edit_fechaconsulta");
	int edit_idespecialidad = Integer.valueOf(request.getParameter("edit_idespecialidad"));
	String edit_idmedico = request.getParameter("edit_idmedico");
	String edit_observacion = request.getParameter("edit_observacion");
	int edit_idusuario = Integer.valueOf(request.getParameter("edit_idusuario"));
	ModeloCitas Modelo = new ModeloCitas();
	if(Modelo.ActualizarCita(edit_idcita, edit_idpaciente, edit_fecha, edit_fechaconsulta, edit_idespecialidad, edit_idmedico, edit_observacion, edit_idusuario)){	
	 response.sendRedirect("VerTablaCita.jsp");
	}
}
%>