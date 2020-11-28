package modelos;

import pkt_citas.Tabla_Citas;
import pkt_consultas.Tabla_Consultas;

public class ModeloAgregar {
	
	Tabla_Citas modeloCitas = new Tabla_Citas();
	Tabla_Consultas modeloConsultas = new Tabla_Consultas();
	
	
	
	public boolean AgregarCita(int idcita,String idpaciente, String fecha, String fechaconsulta,
			int idespecialidad, String idmedico, String observacion,int idusuario) {
		return modeloCitas.AgregarCita(idcita,idpaciente, fecha, fechaconsulta, idespecialidad, idmedico, observacion, idusuario);
	}
	
	public boolean AgregarConsulta(int idconsulta,String paciente,String fecha,String medico,String observacion){	
		return modeloConsultas.AgregarConsulta(idconsulta, paciente, fecha, medico, observacion);
	}
	
	
	
	
	

}
