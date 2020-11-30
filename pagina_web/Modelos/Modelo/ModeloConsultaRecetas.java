package Modelo;

import pkt_consulta_recetas.Tabla_Consulta_recetas;

public class ModeloConsultaRecetas {

	Tabla_Consulta_recetas ModeloConsultaRecetas = new Tabla_Consulta_recetas();
	
	public boolean VerificarConsultaRecetas(int id) {
		return ModeloConsultaRecetas.VerificarConsultaRecetas(id);
	}
	public boolean AgregarConsultaRecetas(int id, int idconsulta, int idrecetas, String otro) {
		return ModeloConsultaRecetas.AgregarConsultaReceta(id, idconsulta, idrecetas, otro);
	}
	public boolean ActualizarConsultaRecetas(int id, int idconsulta, int idrecetas, String otro) {
		return ModeloConsultaRecetas.ActualizarConsultaRecetas(id, idconsulta, idrecetas, otro);
	}
	public boolean EliminarConsultaRecetas(int id) {
		return ModeloConsultaRecetas.EliminarConsultaRecetas(id);
	}
	
}
