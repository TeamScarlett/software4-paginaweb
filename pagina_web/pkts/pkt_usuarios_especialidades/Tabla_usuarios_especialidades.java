package pkt_usuarios_especialidades;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;


public class Tabla_usuarios_especialidades extends pkt_conexion.enlace{

	public static LinkedList<Usuarios_especialidades> getUsuarios_especialidades() {



		LinkedList<Usuarios_especialidades> ListaUsuarios_especialidades = new LinkedList<Usuarios_especialidades>();

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from citas");
			

			while (rs.next()) {
				Usuarios_especialidades Usuarios_especialidades = new Usuarios_especialidades();
				Usuarios_especialidades.setId(rs.getInt(1));
				Usuarios_especialidades.setIdespecialidad(rs.getInt(2));
				Usuarios_especialidades.setIdusuario(rs.getInt(3));

				

				ListaUsuarios_especialidades.add(Usuarios_especialidades);

			}

			
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		
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