 
<%@page import="Modelo.ModeloConsultaRecetas"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	int add_idconsulta = Integer.valueOf(request.getParameter("add_idconsulta"));
	int add_idrecetas = Integer.valueOf(request.getParameter("add_idrecetas"));
	String add_otro = request.getParameter("add_otro");
	ModeloConsultaRecetas Modelo = new ModeloConsultaRecetas();
	if(Modelo.AgregarConsultaRecetas(add_id, add_idconsulta, add_idrecetas, add_otro)){
	response.sendRedirect("VerTablaConsultaReceta.jsp");
	}
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	ModeloConsultaRecetas Modelo = new ModeloConsultaRecetas();
	if(Modelo.EliminarConsultaRecetas(del_id)){
	response.sendRedirect("VerTablaConsultaReceta.jsp");
	}
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	int edit_idconsulta = Integer.valueOf(request.getParameter("edit_idconsulta"));
	int edit_idrecetas = Integer.valueOf(request.getParameter("edit_idrecetas"));
	String edit_otro = request.getParameter("edit_otro");
	ModeloConsultaRecetas Modelo = new ModeloConsultaRecetas();
	if(Modelo.AgregarConsultaRecetas(edit_id, edit_idconsulta, edit_idrecetas, edit_otro)){
		response.sendRedirect("VerTablaConsultaReceta.jsp");
		}
}