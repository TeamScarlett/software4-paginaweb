package Modelo;

import pkt_especialidades.Tabla_Especialidades;

public class ModeloEspecialidades {
	
	Tabla_Especialidades ModeloEspecialidades = new Tabla_Especialidades();
	
	public boolean VerificarEspecialidades(int id) {
		return ModeloEspecialidades.VerificarEspecilidades(id);
	}
	
	public boolean AgregarEspecialidades(int id,String descripcion) {
		return ModeloEspecialidades.AgregarEspecialidades(id, descripcion);
	}

}
