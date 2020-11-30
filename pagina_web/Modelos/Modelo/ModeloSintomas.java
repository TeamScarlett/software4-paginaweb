package Modelo;

import pkt_sintomas.Tabla_sintomas;

public class ModeloSintomas {
	
	Tabla_sintomas ModeloSintomas = new Tabla_sintomas();
	
	public boolean VerificarSintoma(int id) {
		return ModeloSintomas.VerificarSintoma(id);
	}
	public boolean AgregarSintoma(int id,String descripcion) {
		return ModeloSintomas.AgregarSintoma(id, descripcion);
	}
	public boolean ActualizarSintoma(int id,String descripcion) {
		return ModeloSintomas.ActualizarSintoma(id, descripcion);
	}
	public boolean EliminarSintoma(int id) {
		return ModeloSintomas.EliminarSintoma(id);
	}

}
 