 
<%@page import="Modelo.ModeloConsultaSignosVitales"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	int add_idconsulta = Integer.valueOf(request.getParameter("add_idconsulta"));
	int add_idrecetas = Integer.valueOf(request.getParameter("add_idsigno_vital"));
	String add_otro = request.getParameter("add_valor");
	 response.sendRedirect("VerTablaConsultaSignosVitales.jsp");
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	 response.sendRedirect("VerTablaConsultaSignosVitales.jsp");
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	int edit_idconsulta = Integer.valueOf(request.getParameter("edit_idconsulta"));
	int edit_idsigno_vital = Integer.valueOf(request.getParameter("edit_idsigno_vital"));
	String edit_valor = request.getParameter("edit_valor");
	 response.sendRedirect("VerTablaConsultaSignosVitales.jsp");
}