package Modelo;

import pkt_consulta_sintomas.Tabla_Consulta_sintomas;

public class ModeloConsultaSintomas {
	
	Tabla_Consulta_sintomas ModeloConsultaSintomas = new Tabla_Consulta_sintomas();
	
	public boolean VerificarConsultaSintomas(int id) {
		return ModeloConsultaSintomas.VerificarConsultaSintomas(id);
	}
	public boolean AgregarConsultaSintomas(int id, int idconsulta, int idsintoma, String observacion) {
		return ModeloConsultaSintomas.AgregarConsultaSintomas(id, idconsulta, idsintoma, observacion);
	}
	public boolean ActualizarConsultaSintomas(int id, int idconsulta, int idsintoma, String observacion) {
		return ModeloConsultaSintomas.ActualizarConsultaSintomas(id, idconsulta, idsintoma, observacion);
	}
	public boolean EliminarConsultaSintomas(int id) {
		return ModeloConsultaSintomas.EliminarConsultaSintomas(id);
	}

}
