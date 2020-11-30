package pkt_tipousuario;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;



public class Tabla_tipousuario extends pkt_conexion.enlace{

	public static LinkedList<Tipousuario> getTipousuario() {

		
		LinkedList<Tipousuario> ListaTipousuario = new LinkedList<Tipousuario>();

		

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from tipousuario");
			

			while (rs.next()) {
				Tipousuario Tipousuario = new Tipousuario();
				Tipousuario.setId(rs.getInt(1));
				Tipousuario.setDescripcion(rs.getString(2));
			

				
				ListaTipousuario.add(Tipousuario);

			}

			
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return ListaTipousuario;
	}
	public boolean VerificarTipoUsuario(int id) {
		

		Statement statement = null;
		
		String sql = "SELECT * FROM `tipousuario` WHERE `id` = '"+id+"' ";
		
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
	
	public boolean AgregarTipoUsuario(int id,String descripcion){

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `tipousuario` (`id`,`descripcion`) VALUES('"+id+"','"+descripcion+"')";
	
		try {
			
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean ActualizarTipoUsuario(int id,String descripcion) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `tipousuario` SET `id`='"+id+"',`descripcion`='"+descripcion+"' WHERE `id` = '"+id+"'";
	

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
		String sql = "DELETE from `tipousuario` where id='"+id+"')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	
}

}