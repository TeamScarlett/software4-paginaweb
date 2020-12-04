  
<%@page import="Modelo.ModeloSignosVitales"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	String add_descripcion = request.getParameter("add_descripcion");
	ModeloSignosVitales Modelo = new ModeloSignosVitales();
	if(Modelo.AgregarSignoVital(add_id, add_descripcion)){
	 response.sendRedirect("VerTablaSignosVitales.jsp");
	}
}



String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	ModeloSignosVitales Modelo = new ModeloSignosVitales();
		if(Modelo.EliminarSignoVital(del_id)){
	 response.sendRedirect("VerTablaSignosVitales.jsp");
}
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	String edit_descripcion = request.getParameter("edit_descripcion");
	ModeloSignosVitales Modelo = new ModeloSignosVitales();
	if(Modelo.ActualizarSignoVital(edit_id, edit_descripcion)){
		 response.sendRedirect("VerTablaSignosVitales.jsp");
		}
}
%>