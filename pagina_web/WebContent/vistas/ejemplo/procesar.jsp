

<%@page
	import="modelos.ModeloAgregar ,utils.Rutas"%>
	

<%

switch(Rutas.opcion){
case "agregar":
	int idcita = Integer.valueOf(request.getParameter("idcita"));
	String idpaciente = request.getParameter("idpaciente");
	String fecha = request.getParameter("fecha");
	String fechaconsulta = request.getParameter("fechaconsulta");
	int idespecialidad = Integer.valueOf(request.getParameter("idespecialidad"));
	String idmedico = request.getParameter("idmedico");
	String observacion = request.getParameter("observacion");
	int idusuario = Integer.valueOf(request.getParameter("idusuario"));


	ModeloAgregar nuevaCita = new ModeloAgregar();
	boolean Verificar = nuevaCita.AgregarCita(idcita, idpaciente, fecha, fechaconsulta, idespecialidad, idmedico, observacion, idusuario);
	out.print("opcion");
	break;
case "editar":
	
	out.println("Se ve a editar");
	break;
}

	
%>


