
<%@page
	import="Modelo.ModeloUsuariosEsp"%>

<% String add=request.getParameter("add");
ModeloUsuariosEsp modelo = new ModeloUsuariosEsp();
if(add != null){
	
	int add_id = Integer.valueOf(request.getParameter("add_idpaciente"));
	int add_idespecialidad = Integer.valueOf(request.getParameter("add_fecha"));
	int add_idusuario = Integer.valueOf(request.getParameter("add_fechaconsulta"));
	if(modelo.AgregarUsuario_esp(add_id, add_idespecialidad, add_idusuario))
	{	
	 response.sendRedirect("VerTablaCita.jsp");
	}
}

String del = request.getParameter("del");
if(del !=null){
	int del_id = Integer.valueOf(request.getParameter("add_idpaciente"));

	if(modelo.EliminarUsuario_esp(del_id)){
	 response.sendRedirect("VerTablaCita.jsp");
	}
	
	}



String edit = request.getParameter("edit");
if(edit !=null){
	
	int edit_id = Integer.valueOf(request.getParameter("add_idpaciente"));
	int edit_idespecialidad = Integer.valueOf(request.getParameter("add_fecha"));
	int edit_idusuario = Integer.valueOf(request.getParameter("add_fechaconsulta"));
	if(modelo.AgregarUsuario_esp(edit_id, edit_idespecialidad, edit_idusuario))
	{	
	 response.sendRedirect("VerTablaCita.jsp");
	}
	
}
%>

	