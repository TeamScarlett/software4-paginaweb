package pkt_signos_vitales;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;



public class Tabla_signos_vitales extends pkt_conexion.enlace{

	public static LinkedList<Signos_vitales> getSignos_vitales() {

		

		LinkedList<Signos_vitales> ListaSignos_vitales = new LinkedList<Signos_vitales>();

		

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from signos_vitales");
			

			while (rs.next()) {
				Signos_vitales Signos_vitales = new Signos_vitales();
				Signos_vitales.setId(rs.getInt(1));
				Signos_vitales.setDescripcion(rs.getString(2));
			
				

				ListaSignos_vitales.add(Signos_vitales);

			}

			
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		
		return ListaSignos_vitales;
	}
	public boolean VerificarSignoVital(int id) {
		

		Statement statement = null;
		
		String sql = "SELECT * FROM `signos_vitales` WHERE `id` = '"+id+"' ";
		
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
	
	public boolean AgregarSignoVital(int id,String descripcion){

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `signos_vitales` (`id`,`descripcion`) VALUES('"+id+"','"+descripcion+"')";
	
		try {
			
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean ActualizarSignoVital(int id,String descripcion) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `signos_vitales` SET `id`='"+id+"',`descripcion`='"+descripcion+"' WHERE `id` = '"+id+"'";
	

		try {
			 
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	
	public boolean EliminarSignoVital(int id) {
		
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