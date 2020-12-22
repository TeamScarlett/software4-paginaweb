<%@page import="utils.Rutas"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href=<%=Rutas.BootstrapURL%> integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>"/>

<meta charset="ISO-8859-1">
</head>
<body>

<header>

<nav class="navbar navbar-expand-md navbar-dark bg-dark">

			<div
				class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">

				<ul class="navbar-nav mr-auto">

					<li class="nav-item"><a class="nav-link" onclick="cambiarNavCita()" id="nav_citas" href="http://localhost:8080/pagina_web/vistas/citas/VerTablaCita.jsp">Citas</a></li>

					<li class="nav-item dropdown">
					
					<a class="nav-link dropdown-toggle" id="nav_consultas-menu" data-toggle="dropdown" href="http://localhost:8080/pagina_web/vistas/consulta/VerTablaConsulta.jsp"
						role="button" aria-haspopup="true" aria-expanded="false">Consultas</a>
						<div class="dropdown-menu">
						
						<a class="dropdown-item" href="http://localhost:8080/pagina_web/vistas/consulta/VerTablaConsulta.jsp">Consulta </a> 
							<div class="dropdown-divider"></div>
						
							<a class="dropdown-item" href="http://localhost:8080/pagina_web/vistas/consulta_diagnostico/VerTablaConsultaDiagnostico.jsp">Consulta Diagnosticos</a> 
							<div class="dropdown-divider"></div>
							
							<a	class="dropdown-item" href="http://localhost:8080/pagina_web/vistas/consulta_laboratorios/VerTablaConsultaLab.jsp">Consulta Laboratorios</a> 
							
							<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="http://localhost:8080/pagina_web/vistas/consulta_recetas/VerTablaConsultaReceta.jsp">Consulta Recetas</a>
								
							<div class="dropdown-divider"></div>
							
							<a class="dropdown-item" href="http://localhost:8080/pagina_web/vistas/consulta_signos_vitales/VerTablaConsultaSignosVitales.jsp">Consulta Signos Vitales</a>
							
							<div class="dropdown-divider"></div>
							
							<a class="dropdown-item" href="http://localhost:8080/pagina_web/vistas/consulta_sintomas/VerTablaConsultaSintomas.jsp">Consulta Sintomas</a>
							
						</div>
						</li>

					<li class="nav-item"><a class="nav-link" id="nav_pacientes" href="http://localhost:8080/pagina_web/vistas/pacientes/VerTablaPacientes.jsp">Pacientes</a></li>

					<li class="nav-item"><a class="nav-link" id="nav_mas" href="#">Más</a>
					</li>

					<li class="nav-item"><a class="nav-link" id="nav_usuarios" href="http://localhost:8080/pagina_web/vistas/usuarios/VerTablaUsuarios.jsp">Usuarios</a></li>

				</ul>

			</div>

			<div class="mx-auto order-0">
    
        <a class="navbar-brand mx-auto" href="http://localhost:8080/pagina_web/vistas/index.jsp">Clinica mundial</a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
        
            <span class="navbar-toggler-icon"></span>
            
        </button>
        
    </div>
    
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
    
        <ul class="navbar-nav ml-auto">
        
            <li class="nav-item">
            
                <a class="nav-link" id="nav_cita" href="http://localhost:8080/pagina_web/vistas/login/desloguear.jsp">Salir</a>
            </li>
            
            
            
        </ul>
        
    </div>
    
</nav>
</header>

<script src="http://localhost:8080/pagina_web/JS/header.js"></script>

<script src=<%=Rutas.JqueryURL %> integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src=<%=Rutas.cdnBoostrapURL %> integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>

</html>