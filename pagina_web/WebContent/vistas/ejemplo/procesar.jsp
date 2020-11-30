

<%@page import="jdk.nashorn.internal.runtime.Debug"%>
<%@page
	import="modelos.ModeloAgregar ,utils.Rutas"%>
	

<%
String add =request.getParameter("add");

if(add != null){
	out.println("add");
	
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

