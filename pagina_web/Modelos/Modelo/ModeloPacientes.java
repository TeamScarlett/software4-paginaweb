package Modelo;

import pkt_pacientes.Tabla_Pacientes;

public class ModeloPacientes {
	
		Tabla_Pacientes ModeloPacientes = new Tabla_Pacientes();
		
		public boolean VerificarPaciente(int id) {
			return ModeloPacientes.VerificarPacientes(id);
		}
		
		public boolean AgregarPaciente(int id,String cedula,String nombre,String apellido,String direccion,String email,String password,String celular) {
			return ModeloPacientes.AgregarPacientes(id, cedula, nombre, apellido, direccion, email, password, celular);
		}
		
		public boolean EliminarPaciente(int id) {
			return ModeloPacientes.VerificarPacientes(id);
		}
		
		public boolean ActualizarPaciente(int id, String nombre, String apellido, String cedula,String celular,String direccion,String email) {
			return ModeloPacientes.ActualizarPacientes(id, nombre, apellido, cedula, celular, direccion, email);
		}
}
