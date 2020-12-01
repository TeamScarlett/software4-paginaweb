package Modelo;

import pkt_estados.Tabla_Estados;

public class ModeloEstados {
	Tabla_Estados ModeloEstados = new Tabla_Estados();
	
	
	public boolean VerificarEstado(int id) {
		return ModeloEstados.VerificarEstados(id);
	}
	public boolean AgregarEstados (int id,String descripcion,int entidad) {
		return ModeloEstados.AgregarEstados(id, descripcion, entidad);
	}
	public boolean ActualizarEstado() {
		return true;
	}
	public boolean EliminarEstado(int id) {
		return ModeloEstados.EliminarEstados(id);
	}
}
