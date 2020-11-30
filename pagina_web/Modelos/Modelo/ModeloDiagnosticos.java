package Modelo;

import pkt_diagnosticos.Tabla_Diagnosticos;

public class ModeloDiagnosticos {
	
	Tabla_Diagnosticos ModeloDiagnosticos = new Tabla_Diagnosticos();
	
	public boolean VerificarDiagnosticos(int id) {
		return ModeloDiagnosticos.VerificarDiagnosticos(id);
	}
	public boolean AgregarDiagnosticos(int id, String descripcion) {
		return ModeloDiagnosticos.AgregarDiagnosticos(id, descripcion);
	}
	public boolean ActualizarDiagnosticos(int id,String descripcion) {
		return ModeloDiagnosticos.ActualizarDiagnostico(id, descripcion);
	}
	public boolean EliminarDiagnosticos(int id) {
		return ModeloDiagnosticos.EliminarDiagnosticos(id);
	}

}
