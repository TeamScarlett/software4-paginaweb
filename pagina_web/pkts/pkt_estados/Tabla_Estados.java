package pkt_estados;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;



public class Tabla_Estados extends pkt_conexion.enlace{
	

	public static LinkedList<Estados> getEstados() {
		
		LinkedList<Estados> ListaEstados = new LinkedList<Estados>();
		
		Connection conexion = EnlacetoDB();
		Statement statement = null;
		
		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from estados");
			
			while(rs.next()) {
			Estados estados = new Estados();
			estados.setId(rs.getInt(1));
			estados.setDescripcion(rs.getString(2));
			estados.setEntidad(rs.getInt(3));
			
			ListaEstados.add(estados);
			}
			
			rs.close();
			statement.close();
			conexion.close();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return ListaEstados;
	}
	public boolean AgregarEstados( int id, String descripcion, int entidad) {
		
		Connection conexion = EnlacetoDB();
		Statement statement = null;

		String sql = "INSERT INTO `estados`(`id`, `descripcion`, `entidad`) VALUES ('" + id + "','" +descripcion + "','" + entidad + "')";

		try {
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	public boolean EliminarEstodos(int id) {
		return true;
	}
	
public boolean VerificarEstados(int id) {
		
		Statement statement = null;
		
		String sql = "SELECT * FROM `estados` WHERE `id` = '"+id+"' ";
		
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
	
}

