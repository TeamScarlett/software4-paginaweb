
<%@page
	import="Modelo.ModeloUsuarios"%>
	
<%
	
String add =request.getParameter("add");	
	
if(add != null){
	out.println("add");
	int add_id= Integer.valueOf(request.getParameter("add_id"));
	String add_cedula = request.getParameter("add_cedula");
	String add_nombre = request.getParameter("add_nombre");
	String add_apellido = request.getParameter("add_apellido");
	String add_direccion = request.getParameter("add_direccion");
	String add_email = request.getParameter("add_email");
	String add_password = request.getParameter("add_password");
	String add_celular = request.getParameter("add_celular");
	int add_idtipousuario= Integer.valueOf(request.getParameter("add_idtipousuario"));
	int add_idestado= Integer.valueOf(request.getParameter("add_idestado"));
	ModeloUsuarios Modelo = new ModeloUsuarios();
	if(Modelo.AgregarUsuario(add_id, add_cedula, add_nombre, add_apellido, add_direccion, add_email, add_password, add_celular, add_idtipousuario, add_idestado)){	
	 response.sendRedirect("VerTablaConsulta.jsp");
	}
}
	
String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id = Integer.valueOf(request.getParameter("del_id"));
	ModeloUsuarios Modelo = new ModeloUsuarios();
	if(Modelo.EliminarUsuario(del_id)){
		 response.sendRedirect("VerTablaUsuarios.jsp");
	}
}
	
String edit = request.getParameter("edit");
if(edit != null){
	out.println("add");
	int edit_id= Integer.valueOf(request.getParameter("edit_id"));
	String edit_cedula = request.getParameter("edit_cedula");
	String edit_nombre = request.getParameter("edit_nombre");
	String edit_apellido = request.getParameter("edit_apellido");
	String edit_direccion = request.getParameter("edit_direccion");
	String edit_email = request.getParameter("edit_email");
	String edit_password = request.getParameter("edit_password");
	String edit_celular = request.getParameter("edit_celular");
	int edit_idtipousuario= Integer.valueOf(request.getParameter("edit_idtipousuario"));
	int edit_idestado= Integer.valueOf(request.getParameter("edit_idestado"));
	ModeloUsuarios Modelo = new ModeloUsuarios();
	if(Modelo.ActualizarUsuario(edit_id, edit_cedula, edit_nombre, edit_apellido, edit_direccion, edit_email, edit_password, edit_celular, edit_idtipousuario, edit_idestado)){	
	 response.sendRedirect("VerTablaConsulta.jsp");
	}
}	
	%>