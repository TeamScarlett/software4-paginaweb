 
<%@page import="Modelo.ModeloConsultaLab"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	int add_idconsulta = Integer.valueOf(request.getParameter("add_idconsulta"));
	int add_idreceta = Integer.valueOf(request.getParameter("add_idreceta"));
	String add_otro = request.getParameter("add_otro");
	response.sendRedirect("VerTablaConsultaLab.jsp");
}


String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	response.sendRedirect("VerTablaConsultaLab.jsp");
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	int edit_idconsulta = Integer.valueOf(request.getParameter("edit_idconsulta"));
	int edit_idreceta = Integer.valueOf(request.getParameter("edit_idreceta"));
	String edit_otro = request.getParameter("edit_otro");
	response.sendRedirect("VerTablaConsultaLab.jsp");
}


	