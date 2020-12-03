 
<%@page import="Modelo.ModeloConsultaSintomas"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	int add_idconsulta = Integer.valueOf(request.getParameter("add_idconsulta"));
	int add_idsintoma = Integer.valueOf(request.getParameter("add_idsigno_vital"));
	String add_observacion = request.getParameter("add_valor");
	 response.sendRedirect("VerTablaConsultaSintomas.jsp");
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	 response.sendRedirect("VerTablaConsultaSintomas.jsp");
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	int edit_idconsulta = Integer.valueOf(request.getParameter("edit_idconsulta"));
	int edit_idsintoma = Integer.valueOf(request.getParameter("edit_idsigno_vital"));
	String edit_observacion = request.getParameter("edit_observacion");
	 response.sendRedirect("VerTablaConsultaSintomas.jsp");
}