package pkt_usuarios_especialidades;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

//import pkt_citas.Citas;

public class Tabla_usuarios_especialidades extends pkt_conexion.enlace{

	public static LinkedList<Usuarios_especialidades> getUsuarios_especialidades() {

		// SE CREA LA LISTA DE TIPO CITAS

		LinkedList<Usuarios_especialidades> ListaUsuarios_especialidades = new LinkedList<Usuarios_especialidades>();

		// SE OBTIENE LA CONEXION

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			// SE REALIZA LA CONSULTA PARA OBTENER TODOS LOS DATOS DE LA DB
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from citas");
			// MIENTRAS EXISTA UN SIGUIENTE REGISTRO SE CREA UN OBJETO DE TIPO CITAS

			while (rs.next()) {
				Usuarios_especialidades Usuarios_especialidades = new Usuarios_especialidades();
				Usuarios_especialidades.setId(rs.getInt(1));
				Usuarios_especialidades.setIdespecialidad(rs.getInt(2));
				Usuarios_especialidades.setIdusuario(rs.getInt(3));

				// DESPUES DE AGREGAR TODOS LOS ATRIBUTOS A ESTE OBJETO
				// SE AGREGA A LA LISTA

				ListaUsuarios_especialidades.add(Usuarios_especialidades);

			}

			// SE CIERRAN LAS CONEXIONES
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		// SE RETORNA LA LISTA
		return ListaUsuarios_especialidades;
	}
	public boolean VerificarUsuario_esp(int id) {
		

		Statement statement = null;
		
		String sql = "SELECT * FROM `usuarios_especialidades` WHERE `id` = '"+id+"' ";
		
		try {
		
		ResultSet rs = statement.executeQuery(sql);
		
		if(rs.getInt(0)==id) {
			return true;
		}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return false;
	}
	
	public boolean AgregarUsuario_esp(int id,int idespecialidad,int idusuario){

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `usuarios_especialidades` (`id`,`idespecialidad`) VALUES('"+id+"','"+idespecialidad+"','"+idusuario+"')";
	
		try {
			
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean ActualizarUsuario_esp(int id,int idespecialidad,int idusuario) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `usuarios_especialidades` SET `id`='"+id+"',`idespecialidad`='"+idespecialidad+"',`idusuario`='"+idusuario+"' WHERE `id` = '"+id+"'";
	

		try {
			 
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	
	public boolean EliminarTipoUsuario(int id) {
		
		Statement statement = null;
		String sql = "DELETE from `usuarios_especialidades` where id='"+id+"')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	
}

}