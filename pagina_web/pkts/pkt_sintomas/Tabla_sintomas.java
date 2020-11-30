package pkt_sintomas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;


public class Tabla_sintomas extends pkt_conexion.enlace{

	public static LinkedList<Sintomas> getSintomas() {

	

		LinkedList<Sintomas> ListaSintomas = new LinkedList<Sintomas>();

		

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from sintomas");
			

			while (rs.next()) {
				Sintomas Sintomas = new Sintomas();
				Sintomas.setId(rs.getInt(1));
				Sintomas.setDescripcion(rs.getString(2));
			

				

				ListaSintomas.add(Sintomas);

			}

			
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		
		return ListaSintomas;
	}
	
	public boolean VerificarSintoma(int id) {
		

		Statement statement = null;
		
		String sql = "SELECT * FROM `sintomas` WHERE `id` = '"+id+"' ";
		
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
	
	public boolean AgregarSintoma(int id,String descripcion){

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `sintomas` (`id`,`descripcion`) VALUES('"+id+"','"+descripcion+"')";
	
		try {
			
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean ActualizarSintoma(int id,String descripcion) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `sintomas` SET `id`='"+id+"',`descripcion`='"+descripcion+"' WHERE `id` = '"+id+"'";
	

		try {
			 
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	
	public boolean EliminarSintoma(int id) {
		
		Statement statement = null;
		String sql = "DELETE from `sintomas` where id='"+id+"')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	
}

}