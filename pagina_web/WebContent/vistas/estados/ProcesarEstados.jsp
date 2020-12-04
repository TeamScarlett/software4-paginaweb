
<%@page import="jdk.nashorn.internal.runtime.Debug"%>
<%@page
	import="Modelo.ModeloEstados"%>
	

<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	String add_descripcion = request.getParameter("add_descripcion");
	int add_entidad = Integer.valueOf(request.getParameter("add_entidad"));
	ModeloEstados Modelo = new ModeloEstados();
	if(Modelo.AgregarEstados(add_id, add_descripcion, add_entidad)){
	 response.sendRedirect("VerTablaEstados.jsp");
	}
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	ModeloEstados Modelo = new ModeloEstados();
		if(Modelo.EliminarEstado(del_id)){
	 response.sendRedirect("VerTablaEstados.jsp");
	}
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	String edit_descripcion = request.getParameter("edit_descripcion");
	ModeloEstados Modelo = new ModeloEstados();
	//if(Modelo.ActualizarEstado(edit_id, edit_descripcion, edit_entidad)){
		// response.sendRedirect("VerTablaDiagnosticos.jsp");	
		 //}
}
%>