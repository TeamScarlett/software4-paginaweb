<%@page import="jdk.nashorn.internal.runtime.Debug"%>
<%@page
	import="Modelo.ModeloEspecialidades ,utils.Rutas"%>
	

<%

String add =request.getParameter("add");

if(add != null){
	out.println("add");
	out.println(request.getParameter("add_id"));
	out.println(request.getParameter("add_descripcion"));
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

<%-- response.sendRedirect("VerTabla.jsp");
--%>
