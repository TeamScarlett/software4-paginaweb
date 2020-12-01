<%@page
	import="pkt_especialidades.*, java.util.LinkedList,utils.Rutas"%>

<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet"
	href="<%=Rutas.BootstrapURL%>"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="<%=Rutas.cssURL%>"/>


<title>Tabla especialidades</title>
</head>

<body>

	<%@ include file="../header.jsp"%>

	<div class="container fluid" id="form_contenedor">
		<div class="card text-center">



			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-6">
							<h2>Especialidades</h2>
						</div>
						<div class="col-sm-6">
							<a href="#aņadirEspecialidades" class="btn btn-success"
								data-toggle="modal" data-target="#form-especialidades"><i class="material-icons">&#xE147;</i> <span>Agregar</span></a>

						</div>
					</div>
				</div>
			</div>
		</div>


<%--############################################################################################################## --%>
<form action="ProcesarEspecialidades.jsp" method="post" name="sub_add">
		<div class="modal" id="form-especialidades">
			<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title">Formulario de estados</h2>
							<button class="close" type="button" data-dismiss="modal">x</button>
						</div>
						<div class="modal-body">
						
						<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Id</span>
								</div>
								<input type="text" class="form-control" placeholder="# de Id"
									aria-label="Username" aria-describedby="basic-addon1"
									name="id" required="required">
									
							</div>
											
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Descripcion</span>
								</div>
								<input type="text" class="form-control" placeholder="Descripcion"
									aria-label="Username" aria-describedby="basic-addon1"
									name="descripcion" required="required">
						</div>
									
						
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>
															

								<button type="button"   onclick="form_add();" class="btn btn-primary">Enviar</button>

							</div>
							
							<input type="hidden" id="add" name="add">
							
							<script>
							function form_add(){
								add.value= "add";
						       sub_add.submit();

							}
						
						</script>
						</div>
					</div>
				</div>
		</div>
		

</form>

<%--############################################################################################################## --%>
		<table id="listado" class="table table-bordered table-hover table-dark">



				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Descripcion</th>
						
					
						<th scope="col">Modificar</th>
						<th scope="col">Eliminar</th>
					</tr>
				</thead>

				<tbody>
					<%
						//SE CREA LA LISTA Y SE UTILIZA EL METODO getCitas PARA OBTENER LA LISTA DE CITAS

					LinkedList<Especialidades> ListaEspecialidades = Tabla_Especialidades.getEspecialidades();

					for (int i = 0; i < ListaEspecialidades.size(); i++) {

						//MIENTRAS EXISTAN REGISTROS SE OBTENDRAN POR LA POSICION Y EN LA POSICION SE IMPRIMEN LOS ATRIBUTOS
						// Y SE PUEDEN TENER INFINIDAD DE ATRIBUTOS Y SERAN DE LA POSICION i

						out.println("<tr scope=\"row\"></th>");
						out.println("<td id=\"idedit\">" + ListaEspecialidades.get(i).getId() + "</td>");
						out.println("<td>" + ListaEspecialidades.get(i).getDescripcion() + "</td>");
						
						out.println("<td id=\"editar\">");
						out.println(

						"<a href=\"#editarRegistro\" class=\"edit\" data-toggle=\"modal\" data-target=\"#form-edit\">"); 

						out.print("<svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-pencil-square\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">");
						out.print("<path d=\"M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z\"/>");
						out.print("<path fill-rule=\"evenodd\" d=\"M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z\"/>");
						out.println("</svg>");
						out.print("Editar</a>");
						out.println("</td>");
						
						out.println("<td id=\"eliminar\">");
						out.println(

								"<a href=\"#eliminarRegistro\" class=\"edit\" data-toggle=\"modal\" data-target=\"#form-del\">"); 

						out.print("<svg width=\"1em\" height=\"1em\" viewBox=\"0 0 16 16\" class=\"bi bi-journal-x\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">"); 
						out.print("<path d=\"M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z\"/>");
						out.print("<path d=\"M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z\"/>");		
						out.print("<path fill-rule=\"evenodd\" d=\"M6.146 6.146a.5.5 0 0 1 .708 0L8 7.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 8l1.147 1.146a.5.5 0 0 1-.708.708L8 8.707 6.854 9.854a.5.5 0 0 1-.708-.708L7.293 8 6.146 6.854a.5.5 0 0 1 0-.708z\"/>");
						out.print("</svg>");
						out.println("Eliminar</a>");
						out.println("</td>");
						
						out.println("</tr>");

					}
					%>
				</tbody>
			
			</table>
		<%-- ############################################################## --%>

	</div>		
	
	<div class="container">
		<%--  FORMULARIO DE MODIFICAR--%>
		<form action="ProcesarEspecialidades.jsp" name="sub_edit" method="post">
			<div class="modal" id="form-edit">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title">Editar especialidades</h2>
							<button class="close" type="button" data-dismiss="modal">x</button>
						</div>
						<div class="modal-body">

							<div class="form-group">
								<label for="id">Id</label> <input
									readonly class="form-control-plaintext" id="form_especialidades_id" type="text" required>
							</div>
							<div class="form-group">
								<label for="descripcion">Descripcion</label> <input
									id="form_especialidades_descripcion" type="text" class="form-control" required>
							</div>						
						</div>
							
						<div>
						
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>

								<button type="button"   onclick="form_edit();" class="btn btn-primary">Enviar</button>																
								<input type="hidden" id="edit" name="edit">
								
								<script>
								function form_edit(){
								edit.value= "edit";
						       sub_edit.submit();

								}
						
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>



		</form>


		<%-- ############################################################## --%>

		<%--  FORMULARIO DE ELIMINAR--%>
		<form action="ProcesarEspecialidades.jsp" method="post" name="sub_del">
			<div class="modal" id="form-del">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title">Eliminar especialidades</h2>
							<button class="close" type="button" data-dismiss="modal">x</button>
						</div>
						<div class="modal-body">

							
								<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">Id</span>
								</div>
								
								<div class="form-group">
								<label for="id">Id</label> <input
									readonly class="form-control-plaintext" name="del_especialidades" id="del_especialidades" type="text" required>
							</div>
							
							</div>

								<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cancelar</button>

								<button type="button" id="btn" onclick="form_del();" class="btn btn-primary">Enviar</button>
								
							</div>
						</div>
						<input type="hidden" id="del" name="del">
						
						<script>
						function form_del(){
						del.value= "del";
						sub_del.submit();
						   
						    
						}
						
						</script>
					</div>
				</div>
			</div>

		</form>

		<%-- ############################################################## --%>
</div>
		
<%@ include file="../footer.jsp"%>

<script>


function selectRow(){
    var rindex, table = document.getElementById("listado");
    for(var i=1;i<table.rows.length;i++){
        table.rows[i].onclick = function(){
          rindex  = this.rowIndex;
          console.log(rindex);
          document.getElementById("form_especialidades_id").value = this.cells[0].innerHTML;
          document.getElementById("form_especialidades_descripcion").value = this.cells[1].innerHTML;
      
          
          document.getElementById("del_especialidades").value = this.cells[0].innerHTML;
        };
    }
}

selectRow();
</script>


		<script src="<%=Rutas.JqueryURL%>"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="<%=Rutas.cdnBoostrapURL %>"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

</body>
</html>