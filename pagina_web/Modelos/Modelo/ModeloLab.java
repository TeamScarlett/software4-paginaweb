package Modelo;

import pkt_laboratorios.Tabla_Laboratorios;

public class ModeloLab {
	
	Tabla_Laboratorios ModeloLab = new Tabla_Laboratorios();
	
	public boolean VerificarLaboratorio(int id) {
		return ModeloLab.VerificarLaboratorios(id);
	}
	public boolean AgregarLaboratorio(int id,String descripcion) {
		return ModeloLab.AgregarLaboratorio(id, descripcion);
	}
	public boolean ActualizarLaboratorio(int id,String descripcion) {
		return ModeloLab.ActualizarLaboratorios(id, descripcion);
	}
	public boolean EliminarLaboratorio(int id) {
		return ModeloLab.EliminarLaboratorios(id);
	}
	

}
