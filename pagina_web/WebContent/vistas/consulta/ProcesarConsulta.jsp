
<%@page
	import="Modelo.ModeloConsulta"%>

<%
String add =request.getParameter("add");

if(add != null){
	out.println("add");
	String add_paciente= request.getParameter("add_paciente");
	int add_idconsulta = Integer.valueOf(request.getParameter("add_idconsulta"));
	String add_fecha = request.getParameter("add_fecha");
	String add_medico = request.getParameter("add_medico");
	String add_observacion = request.getParameter("add_observacion");
	ModeloConsulta Modelo = new ModeloConsulta();
	if(Modelo.AgregarConsulta(add_idconsulta, add_paciente, add_fecha, add_medico, add_observacion)){	
	 response.sendRedirect("VerTablaConsulta.jsp");
	}
}

String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_idconsulta = Integer.valueOf(request.getParameter("del_idconsulta"));
	ModeloConsulta Modelo = new ModeloConsulta();
	if(Modelo.EliminarConsulta(del_idconsulta)){
		 response.sendRedirect("VerTablaConsulta.jsp");
	}
}


String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	String edit_paciente= request.getParameter("edit_paciente");
	int edit_idconsulta = Integer.valueOf(request.getParameter("edit_idconsulta"));
	String edit_fecha = request.getParameter("edit_fecha");
	String edit_medico = request.getParameter("edit_medico");
	String edit_observacion = request.getParameter("edit_observacion");
	ModeloConsulta Modelo = new ModeloConsulta();
	if(Modelo.ActualizarConsulta(edit_idconsulta, edit_paciente, edit_fecha, edit_medico, edit_observacion)){	
	 response.sendRedirect("VerTablaConsulta.jsp");
	}
}
%>