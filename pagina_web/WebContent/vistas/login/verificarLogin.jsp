
<%@page
	import="pkt_login.*"%>
	<%@page
	import="pkt_consultas.Tabla_Consultas, pkt_consultas.Consultas, java.util.LinkedList,utils.Rutas"%>


	
	<%
	String user = request.getParameter("user");
	String pass = request.getParameter("pass");
	Tabla_login loguear = new Tabla_login();
	if(loguear.VerificarUsuario(user, pass)){
		session.setAttribute("user", user);
		response.sendRedirect("http://localhost:8080/pagina_web/vistas/citas/VerTablaCita.jsp");
	}else{
		
		response.sendRedirect("http://localhost:8080/pagina_web/vistas/login/login.jsp");
		
	}
	%>

