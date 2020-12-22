
<%@page
	import="pkt_login.* ,utils.Rutas"%>
	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
Rutas.session = "";
response.sendRedirect("http://localhost:8080/pagina_web/vistas/login/login.jsp");
%>