package pkt_especialidades;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Especialidades extends pkt_conexion.enlace{

	public static LinkedList<Especialidades> getEspecialidades(){
		
		LinkedList<Especialidades> ListaEspecialidades = new LinkedList<Especialidades>();

		Connection conexion = EnlacetoDB();
		
		Statement statement = null;
	
		try {
		statement = conexion.createStatement();
		ResultSet rs = statement.executeQuery("select * from especialidades");

		while(rs.next()){
		Especialidades especialidades = new Especialidades();
		especialidades.setId(rs.getInt(1));
		especialidades.setDescripcion(rs.getString(2));
		
		ListaEspecialidades.add(especialidades);
		}
		rs.close();
		statement.close();
		conexion.close();

		}
		catch(SQLException e) {
		e.printStackTrace();
		}
		return ListaEspecialidades;
		}
	

	public boolean AgregarEspecialidades( String id, String descripcion){


		Connection conexion = EnlacetoDB();
		Statement statement = null;

		String sql = "INSERT INTO `especialidades`(`id`, `descripcion`) VALUES ('" + id + "','" +descripcion + "')";

		try {
			
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}

	public boolean EliminarEspecialidades(int id) {
		return true;
	}
}
	/*public boolean VerificarEspecilidades(int id) {
		
		statement = null;
		
		String sql = "SELECT * FROM `especialidades` WHERE `cita` = '"+id+"' ";
		
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
	}*/


