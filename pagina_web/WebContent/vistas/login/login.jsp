
<%@page
	import="pkt_tipousuario.*, java.util.LinkedList,utils.Rutas"%>
	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>"/>
<title>Login</title>
</head>
<body>
<%@ include file="../header.jsp"%>
<div class="container">
<div class="row">
    <div class="col-sm">
  
    </div>
    <div class="col-6 ">
    
     <form action="" method="post">

  <div class="form-group">
    <label for="exampleInputEmail1">Cedula</label>
    <input type="email" class="form-control" id="cedula-login" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Contraseña</label>
    <input type="password" class="form-control" id="pass-login" placeholder="Password">
  </div>
  
  <button type="submit" id="btn-login"class="btn btn-primary">Login</button>
</form>
     
    </div>
    <div class="col-sm">
   
    </div>
  </div>
  

</div>

<%@ include file="../footer.jsp"%>
</body>
</html>