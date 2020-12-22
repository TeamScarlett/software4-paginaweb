 
<%@page import="Modelo.ModeloLab"%>


<%
ModeloLab Modelo = new ModeloLab();
String add=request.getParameter("add");

if(add != null){
	
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	String add_descripcion = request.getParameter("add_descripcion");

	if(Modelo.AgregarLaboratorio(add_id, add_descripcion)){
	 response.sendRedirect("VerTablaLab.jsp");
	}
}



String del = request.getParameter("del");
if(del !=null){
	
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	
		if(Modelo.EliminarLaboratorio(del_id)){
	 response.sendRedirect("VerTablaLab.jsp");
}
}

String edit = request.getParameter("edit");
if(edit !=null){
	
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	String edit_descripcion = request.getParameter("edit_descripcion");
	
	if(Modelo.ActualizarLaboratorio(edit_id, edit_descripcion)){
		response.sendRedirect("VerTablaLab.jsp");
		} 
}
%>