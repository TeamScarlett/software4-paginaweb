package Modelo;

import pkt_recetas.Tabla_recetas;

public class ModeloRecetas {
	
	Tabla_recetas ModeloRecetas = new Tabla_recetas();
	public boolean VerificarReceta(int id) {
		return ModeloRecetas.VerificarReceta(id);
	}
	public boolean AgregarReceta(int id,String descripcion) {
		return ModeloRecetas.AgregarReceta(id, descripcion);
	}
	public boolean ActualizarReceta(int id,String descripcion) {
		return ModeloRecetas.ActualizarReceta(id, descripcion);
	}
	public boolean EliminarReceta(int id) {
		return ModeloRecetas.EliminarReceta(id);
	}
}
