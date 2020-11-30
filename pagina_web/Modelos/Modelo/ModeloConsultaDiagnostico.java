package Modelo;

import pkt_consulta_diagnostico.Tabla_Consulta_diagnostico;

public class ModeloConsultaDiagnostico {
	
	Tabla_Consulta_diagnostico ModeloConsultaDiagnostico = new Tabla_Consulta_diagnostico();
	
	public boolean VerificarConsultaDiagnostico(int id) {
		return ModeloConsultaDiagnostico.VerificarConsultaDiagnostico(id);
	}
	public boolean AgregarConsultaDiagnostico(int id, int idconsulta, int iddiagnostico, String observacion) {
		return ModeloConsultaDiagnostico.AgregarConsultaDiagnostico(id, idconsulta, iddiagnostico, observacion);
	}
	public boolean ActualizarConsultaDiagnostico(int id, int idconsulta, int iddiagnostico, String observacion) {
		return ModeloConsultaDiagnostico.ActualizarConsultaDiagnosticos(id, idconsulta, iddiagnostico, observacion);
	}
	public boolean EliminarConsultaDiagnostico(int id) {
		return ModeloConsultaDiagnostico.EliminarConsultaDiagnostico(id);
	}

}
