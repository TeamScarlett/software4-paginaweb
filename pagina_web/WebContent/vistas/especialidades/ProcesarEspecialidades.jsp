<%@page import="jdk.nashorn.internal.runtime.Debug"%>
<%@page
	import="Modelo.ModeloEspecialidades"%>
	
<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	String add_descripcion = request.getParameter("add_descripcion");
	 response.sendRedirect("VerTablaEspecialidades.jsp");
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	 response.sendRedirect("VerTablaEspecialidades.jsp");
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	String edit_descripcion = request.getParameter("edit_descripcion");
	 response.sendRedirect("VerTablaEspecialidades.jsp");
}