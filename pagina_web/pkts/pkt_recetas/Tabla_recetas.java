package pkt_recetas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

//import pkt_citas.Citas;

public class Tabla_recetas extends pkt_conexion.enlace{

	public static LinkedList<Recetas> getRecetas() {

		LinkedList<Recetas> ListaRecetas = new LinkedList<Recetas>();

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from citas");
			
			while (rs.next()) {
				Recetas Recetas = new Recetas();
				Recetas.setId(rs.getInt(1));
				Recetas.setDescripcion(rs.getString(2));

				ListaRecetas.add(Recetas);

			}

			
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		
		return ListaRecetas;
	}
	
	public boolean VerificarReceta(int id) {
		

		Statement statement = null;
		
		String sql = "SELECT * FROM `recetas` WHERE `id` = '"+id+"' ";
		
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
	
	public boolean AgregarReceta(int id,String descripcion){

		

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `recetas` (`id`,`descripcion`) VALUES('"+id+"','"+descripcion+"')";
	

		try {
			
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean ActualizarReceta(int id,String descripcion) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `recetas` SET `id`='"+id+"',`descripcion`='"+descripcion+"' WHERE `id` = '"+id+"'";
	

		try {
			 
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	
	public boolean EliminarReceta(int id) {
		
		Statement statement = null;
		String sql = "delete from `recetas` where id='"+id+"')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	
}


}
