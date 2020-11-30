package Modelo;

import pkt_citas.Tabla_Citas;

public class ModeloCitas {

	
	Tabla_Citas modeloCitas = new Tabla_Citas();
	
	
	public boolean AgregarCita(int idcita,String idpaciente, String fecha, String fechaconsulta,
			int idespecialidad, String idmedico, String observacion,int idusuario) {
		return modeloCitas.AgregarCita(idcita,idpaciente, fecha, fechaconsulta, idespecialidad, idmedico, observacion, idusuario);
	}
	
	public boolean VerificarCita(int idcita) {
		return modeloCitas.VerificarCita(idcita);
	}
	
	public boolean ActualizarCita(int idcita,String idpaciente, String fecha, String fechaconsulta,
			int idespecialidad, String idmedico, String observacion,int idusuario) {
		return modeloCitas.ActualizarCita(idcita, idpaciente, fecha, fechaconsulta, idespecialidad, idmedico, observacion, idusuario);
	}
	
	public boolean EliminarCita(int idcita) {
		return modeloCitas.EliminarCita(idcita);
	}
}
