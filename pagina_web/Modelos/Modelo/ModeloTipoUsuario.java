package Modelo;

import pkt_tipousuario.Tabla_tipousuario;

public class ModeloTipoUsuario {
		Tabla_tipousuario ModeloTipoUsuario = new Tabla_tipousuario();
		
		public boolean VerificarTipoUsuario(int id) {
			return ModeloTipoUsuario.VerificarTipoUsuario(id);
		}
		public boolean AgregarTipoUsuario(int id,String descripcion) {
			return ModeloTipoUsuario.AgregarTipoUsuario(id, descripcion);
		}
		public boolean ActualizarTipoUsuario(int id,String descripcion ) {
			return ModeloTipoUsuario.ActualizarTipoUsuario(id, descripcion);
		}
		public boolean EliminarTipoUsuario(int id) {
			return ModeloTipoUsuario.EliminarTipoUsuario(id);
		}
}
