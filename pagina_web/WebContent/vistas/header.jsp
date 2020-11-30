<%@page import="utils.Rutas"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href=<%=Rutas.BootstrapURL%> integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>"/>

<meta charset="ISO-8859-1">
</head>
<body>

<header class="navbar navbar-dark bg-dark">

<nav class="navbar navbar-expand-md navbar-light bg-faded">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
   <a class="navbar-brand" href="../vistas/index.jsp">
    <img src="<%=Rutas.proyecto%>/recursos/clinica.png" width="30" height="30" alt="" loading="lazy">
  </a>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav mr-auto">
            <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
            <a class="nav-link" href="#">Features</a>
            <a class="nav-link" href="#">Pricing</a>
            <a class="nav-link" href="#">Pricing</a>
            <a class="nav-link" href="#">Pricing</a>
            <a class="nav-link" href="#">Pricing</a>
            <a class="nav-link" href="#">Pricing</a>
     
        </div>
    </div>
</nav>
</header>



<script src=<%=Rutas.JqueryURL %> integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src=<%=Rutas.cdnBoostrapURL %> integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>

</html>