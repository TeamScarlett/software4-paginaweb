package Modelo;

import pkt_usuarios_especialidades.Tabla_usuarios_especialidades;

public class ModeloUsuariosEsp {
	
	Tabla_usuarios_especialidades ModeloUsuarioEsp = new Tabla_usuarios_especialidades();
	
	public boolean VerificarUsuario_esp(int id) {
		return ModeloUsuarioEsp.VerificarUsuario_esp(id);
	}
	public boolean AgregarUsuario_esp(int id,int idespecialidad,int idusuario) {
		return ModeloUsuarioEsp.AgregarUsuario_esp(id, idespecialidad, idusuario);
	}
	public boolean ActualizarUsuario_esp(int id,int idespecialidad,int idusuario) {
		return ModeloUsuarioEsp.ActualizarUsuario_esp(id, idespecialidad, idusuario);
	}
	public boolean EliminarUsuario_esp(int id) {
		return ModeloUsuarioEsp.EliminarTipoUsuario(id);
	}

}
