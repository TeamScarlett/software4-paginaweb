 
<%@page import="Modelo.ModeloTipoUsuario"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	String add_descripcion = request.getParameter("add_descripcion");
	ModeloTipoUsuario Modelo = new ModeloTipoUsuario();
	if(Modelo.AgregarTipoUsuario(add_id, add_descripcion)){
	 response.sendRedirect("VerTablaTipoUsuario.jsp");
	}
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	ModeloTipoUsuario Modelo = new ModeloTipoUsuario();
		if(Modelo.EliminarTipoUsuario(del_id)){
	 response.sendRedirect("VerTipoUsuario.jsp");
}
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	String edit_descripcion = request.getParameter("edit_descripcion");
	ModeloTipoUsuario Modelo = new ModeloTipoUsuario();
	if(Modelo.ActualizarTipoUsuario(edit_id, edit_descripcion)){
		 response.sendRedirect("VerTipoUsuario.jsp");
		}
}
%>