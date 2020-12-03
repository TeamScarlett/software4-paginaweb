
<%@page
	import="pkt_tipousuario.*, java.util.LinkedList,utils.Rutas"%>
	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="<%=Rutas.BootstrapURL%>"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>"/>

<link rel="preconnect" href="https://fonts.gstatic.com">

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300&display=swap" rel="stylesheet">

<title>Login</title>
</head>
<body>
<%@ include file="../header.jsp"%>
<div class="container">
<div class="row">
    <div class="col-sm">
  
    </div>
    <div class="col-6 ">
    
     <form action="verificarLogin.jsp" method="post">

  <div class="form-group">
    <label >Cedula</label>
    <input type="text" class="form-control" name="user" id="cedula-login" aria-describedby="emailHelp" placeholder="Ingrese su numero de cedula" required>
  </div>
  
  <div class="form-group">
    <label>Contraseña</label>
    <input type="password" class="form-control" name="pass" id="pass-login" placeholder="Ingrese su contraseña" required>
  </div>
  
  <button type="submit" id="btn-login"class="btn btn-primary">Entrar</button>
</form>
     
    </div>
    <div class="col-sm">
   
    </div>
  </div>
  

</div>

<%@ include file="../footer.jsp"%>
</body>
</html>