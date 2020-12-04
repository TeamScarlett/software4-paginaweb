 
<%@page import="Modelo.ModeloSintomas"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	String add_descripcion = request.getParameter("add_descripcion");
	ModeloSintomas Modelo = new ModeloSintomas();
	if(Modelo.AgregarSintoma(add_id, add_descripcion)){
	 response.sendRedirect("VerTablaSintomas.jsp");
	}
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	ModeloSintomas Modelo = new ModeloSintomas();
		if(Modelo.EliminarSintoma(del_id)){
	 response.sendRedirect("VerTablaSintomas.jsp");
}
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	String edit_descripcion = request.getParameter("edit_descripcion");
	ModeloSintomas Modelo = new ModeloSintomas();
	if(Modelo.ActualizarSintoma(edit_id, edit_descripcion)){
		 response.sendRedirect("VerTablaSintomas.jsp");
		}
}
%>