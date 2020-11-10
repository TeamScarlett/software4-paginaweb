<%@page import="pkt_citas.Tabla_Citas,pkt_citas.Citas, java.util.LinkedList,utils.Rutas"%>

<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>"/>


<title>Tabla citas</title>
</head>

<body>
<div class="container" id="form_contenedor">
<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link " href="<%=Rutas.vistasURL%>index.jsp">Tabla Citas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%=Rutas.vistasURL%>TablaCitas/VerTabla.jsp">Tabla </a>
      </li>
    </ul>
  </div>
  
  
  <div class="card-body">
    <h5 class="card-title">Tabla de Citas Medicas</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>




<table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">Cita</th>
      <th scope="col">Paciente</th>
      <th scope="col">Fecha</th>
      <th scope="col">Fecha Consulta</th>
      <th scope="col">Especialidad</th>
      <th scope="col">Medico</th>
      <th scope="col">Observación</th>
      <th scope="col">Usuario</th>
    </tr>
  </thead>
  <tbody>
   
    <%
 //SE CREA LA LISTA Y SE UTILIZA EL METODO getCitas PARA OBTENER LA LISTA DE CITAS
 
  LinkedList<Citas> ListaCitas = Tabla_Citas.getCitas();
    
  for(int i=0;i<ListaCitas.size();i++){
	  
	  //MIENTRAS EXISTAN REGISTROS SE OBTENDRAN POR LA POSICION Y EN LA POSICION SE IMPRIMEN LOS ATRIBUTOS
	  // Y SE PUEDEN TENER INFINIDAD DE ATRIBUTOS Y SERAN DE LA POSICION i
	  
	  out.println("<tr>");
	  out.println("<tr scope=\"row\"></th>");
	  out.println("<td>"+ListaCitas.get(i).getIdcita()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getIdpaciente()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getFecha()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getFechaConsulta()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getIdespecialidad()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getIdMedico()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getObservacion()+"</td>");
	  out.println("<td>"+ListaCitas.get(i).getIdUsuario()+"</td>");
	  out.println("</tr>");
	  
  }

  %>
  </tbody>
</table>

</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</body>
</html>