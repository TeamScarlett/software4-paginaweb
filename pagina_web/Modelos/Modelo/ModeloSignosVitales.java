package Modelo;

import pkt_signos_vitales.Tabla_signos_vitales;

public class ModeloSignosVitales {
	
	Tabla_signos_vitales ModeloSignosVitales = new Tabla_signos_vitales();
	
	public boolean VerificarSignoVital(int id) {
		return ModeloSignosVitales.VerificarSignoVital(id);
	}
	public boolean AgregarSignoVital(int id,String descripcion) {
		return ModeloSignosVitales.AgregarSignoVital(id, descripcion);
	}
	public boolean ActualizarSignoVital(int id,String descripcion) {
		return ModeloSignosVitales.ActualizarSignoVital(id, descripcion);
	}
	public boolean EliminarSignoVital(int id) {
		return ModeloSignosVitales.EliminarSignoVital(id);
	}

}
