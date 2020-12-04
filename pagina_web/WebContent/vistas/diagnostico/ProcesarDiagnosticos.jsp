 
<%@page import="Modelo.ModeloDiagnosticos"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	String add_descripcion = request.getParameter("add_descripcion");
	ModeloDiagnosticos Modelo = new ModeloDiagnosticos();
	if(Modelo.AgregarDiagnosticos(add_id, add_descripcion)){
	 response.sendRedirect("VerTablaDiagnosticos.jsp");
	}
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	ModeloDiagnosticos Modelo = new ModeloDiagnosticos();
		if(Modelo.EliminarDiagnosticos(del_id)){
	 response.sendRedirect("VerTablaDiagnosticos.jsp");
}
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	String edit_descripcion = request.getParameter("edit_descripcion");
	ModeloDiagnosticos Modelo = new ModeloDiagnosticos();
	if(Modelo.ActualizarDiagnosticos(edit_id, edit_descripcion)){
		 response.sendRedirect("VerTablaDiagnosticos.jsp");
		}
}
%>