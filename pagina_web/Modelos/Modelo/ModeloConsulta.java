package Modelo;

import pkt_consultas.Tabla_Consultas;

public class ModeloConsulta {
	
	Tabla_Consultas ModeloConsulta = new Tabla_Consultas();
	
	public boolean AgregarConsulta(int idconsulta,String paciente,String fecha,String medico,String observacion) {
		return ModeloConsulta.AgregarConsulta(idconsulta, paciente, fecha, medico, observacion);
	}
	public boolean VerificarConsulta(int idconsulta) {
		return ModeloConsulta.VerificarConsulta(idconsulta);
	}
	public boolean ActualizarConsulta(int idconsulta,String paciente,String fecha,String medico,String observacion) {
		return ModeloConsulta.ActualizarConsulta(idconsulta, paciente, fecha, medico, observacion);
	}
	public boolean EliminarConsulta(int idconsulta) {
		return ModeloConsulta.EliminarConsulta(idconsulta);
	}

}
