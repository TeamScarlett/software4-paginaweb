 
<%@page import="Modelo.ModeloConsultaSignosVitales"%>


<%
String add=request.getParameter("add");

if(add != null){
	out.println("add");
	int add_id = Integer.valueOf(request.getParameter("add_id"));
	int add_idconsulta = Integer.valueOf(request.getParameter("add_idconsulta"));
	int add_idsigno_vital = Integer.valueOf(request.getParameter("add_idsigno_vital"));
	String add_valor = request.getParameter("add_valor");
	ModeloConsultaSignosVitales Modelo = new ModeloConsultaSignosVitales();
	if(Modelo.AgregarConsultaSignosVitales(add_id, add_idconsulta, add_idsigno_vital, add_valor)){
	 response.sendRedirect("VerTablaConsultaSignosVitales.jsp");
	}
}


String del = request.getParameter("del");
if(del !=null){
	out.println("del");
	int del_id  = Integer.valueOf(request.getParameter("del_id"));
	ModeloConsultaSignosVitales Modelo = new ModeloConsultaSignosVitales();
	if(Modelo.EliminarConsultaSignosVitales(del_id)){
	 response.sendRedirect("VerTablaConsultaSignosVitales.jsp");
	}
}
	
String edit = request.getParameter("edit");
if(edit !=null){
	out.println("edit");
	int edit_id = Integer.valueOf(request.getParameter("edit_id"));
	int edit_idconsulta = Integer.valueOf(request.getParameter("edit_idconsulta"));
	int edit_idsigno_vital = Integer.valueOf(request.getParameter("edit_idsigno_vital"));
	String edit_valor = request.getParameter("edit_valor");
	ModeloConsultaSignosVitales Modelo = new ModeloConsultaSignosVitales();
	if(Modelo.ActualizarConsultaSignosVitales(edit_id, edit_idconsulta,edit_idsigno_vital, edit_valor)){	
	 response.sendRedirect("VerTablaConsultaSignosVitales.jsp");
		}
	}
