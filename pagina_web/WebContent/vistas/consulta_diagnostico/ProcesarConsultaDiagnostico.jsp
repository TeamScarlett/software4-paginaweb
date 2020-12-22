 
<%@page import="Modelo.ModeloConsultaDiagnostico"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	int add_idconsulta = Integer.valueOf(request.getParameter("add_idconsulta"));
	int add_iddiagnostico = Integer.valueOf(request.getParameter("add_iddiagnostico"));
	String add_observacion = request.getParameter("add_observacion");

	ModeloConsultaDiagnostico Modelo = new ModeloConsultaDiagnostico();
	if(Modelo.AgregarConsultaDiagnostico(add_id, add_idconsulta, add_iddiagnostico, add_observacion)){
	response.sendRedirect("VerTablaConsultaReceta.jsp");
	}

	response.sendRedirect("VerTablaConsultaDiagnostico.jsp");
}


String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));

	ModeloConsultaDiagnostico Modelo = new ModeloConsultaDiagnostico();
	if(Modelo.EliminarConsultaDiagnostico(del_id))
	response.sendRedirect("VerTablaConsultaDiagnostico.jsp");
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	int edit_idconsulta = Integer.valueOf(request.getParameter("edit_idconsulta"));
	int edit_iddiagnostico = Integer.valueOf(request.getParameter("edit_iddiagnostico"));
	String edit_observacion = request.getParameter("edit_observacion");

	ModeloConsultaDiagnostico Modelo = new ModeloConsultaDiagnostico();
	if(Modelo.ActualizarConsultaDiagnostico(edit_id, edit_idconsulta, edit_iddiagnostico, edit_observacion)){

	ModeloConsultaDiagnostico modelo = new ModeloConsultaDiagnostico();
	modelo.ActualizarConsultaDiagnostico(edit_id, edit_idconsulta, edit_iddiagnostico, edit_observacion);

	}
}


	
%>