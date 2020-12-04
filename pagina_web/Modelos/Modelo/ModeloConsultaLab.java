package Modelo;

import pkt_consulta_laboratorio.Tabla_Consulta_laboratorio;

public class ModeloConsultaLab {
	
	Tabla_Consulta_laboratorio ModeloConsultaLab = new Tabla_Consulta_laboratorio();
	
	public boolean VerificarConsultaLab(int id) {
		return ModeloConsultaLab.VerificarConsultaLaboratorios(id);
	}
	public boolean AgregarConsultaLab(int id, int idconsulta, int idreceta, String otro) {
		return ModeloConsultaLab.AgregarConsultaLaboratorio(id, idconsulta, idreceta, otro);
	}
	public boolean ActualizarConsultaLab(int id, int idconsulta, int idreceta, String otro) {
		return ModeloConsultaLab.ActualizarConsultaLaboratorios(id, idconsulta, idreceta, otro);
	}
	public boolean EliminarConsultaLab(int id) {
		return ModeloConsultaLab.EliminarConsultaLaboratorios(id);
	}

}
