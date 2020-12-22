
<%@page
	import="Modelo.ModeloPacientes ,utils.Rutas"%>
	

<%
ModeloPacientes Modelo = new ModeloPacientes();
String add =request.getParameter("add");

if(add != null){
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	String add_nombre = request.getParameter("add_nombre");
	String add_apellido = request.getParameter("add_apellido");
	String add_cedula = request.getParameter("add_cedula");
	String add_celular = request.getParameter("add_celular");
	String add_direccion = request.getParameter("add_direccion");
	String add_email = request.getParameter("add_email");
	String add_pass = request.getParameter("add_pass");
	if(Modelo.AgregarPaciente(add_id, add_cedula, add_nombre, add_apellido, add_direccion, add_email, add_pass, add_celular)){
		response.sendRedirect("VerTablaPacientes.jsp");
		
	}
}
String del = request.getParameter("del");
if(del !=null){
	int del_id = Integer.valueOf(request.getParameter("del_id"));
	if(Modelo.EliminarPaciente(del_id)){
		response.sendRedirect("VerTablaPacientes.jsp");
	}
}

String edit = request.getParameter("edit");
if(edit !=null){
	
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	String edit_nombre = request.getParameter("edit_nombre");
	String edit_apellido = request.getParameter("edit_apellido");
	String edit_cedula = request.getParameter("edit_cedula");
	String edit_celular = request.getParameter("edit_celular");
	String edit_direccion = request.getParameter("edit_direccion");
	String edit_email = request.getParameter("edit_email");
	
	 if(Modelo.ActualizarPaciente(edit_id, edit_cedula, edit_nombre, edit_apellido, edit_direccion, edit_email, edit_celular)){
		response.sendRedirect("VerTablaPacientes.jsp");
		
	}
	
}


	
%>

<%-- response.sendRedirect("VerTabla.jsp");
--%>