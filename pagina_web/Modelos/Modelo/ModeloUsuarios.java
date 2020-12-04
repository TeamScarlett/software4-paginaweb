package Modelo;

import pkt_usuarios.Tabla_usuarios;

public class ModeloUsuarios {
	
	Tabla_usuarios ModeloUsuarios = new Tabla_usuarios();
	
	public boolean VerificarUsuario(int id) {
		return ModeloUsuarios.VerificarUsuario(id);
	}
	public boolean AgregarUsuario(int id,String cedula,String nombre,String apellido,String direccion,String email,String password,String celular,int idtipousuario,int idestado) {
	return ModeloUsuarios.AgregarUsuario(id, cedula, nombre, apellido, direccion, email, password, celular, idtipousuario, idestado);
	}
	
	public boolean ActualizarUsuario(int id,String cedula,String nombre,String apellido,String direccion,String email,String password,String celular,int idtipousuario,int idestado) {
	return ModeloUsuarios.ActualizarUsuario(id, cedula, nombre, apellido, direccion, email, password, celular, idtipousuario, idestado);	
	}
	public boolean EliminarUsuario(int id) {
		return ModeloUsuarios.EliminarUsuario(id);
	}

}
