
<%@page
	import="Modelo.ModeloConsulta"%>

<%
String add =request.getParameter("add");

if(add != null){
	out.println("add");
	String add_paciente= request.getParameter("add_paciente");
	int add_idconsulta = Integer.valueOf(request.getParameter("add_idconsulta"));
	ModeloConsulta Modelo = new ModeloConsulta();
	if(Modelo.VerificarConsulta(add_idconsulta)){	
	 response.sendRedirect("VerTablaConsulta.jsp");

	}
}
String del = request.getParameter("del");
if(del !=null){
	out.println("del");
}

String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
}


	
%>