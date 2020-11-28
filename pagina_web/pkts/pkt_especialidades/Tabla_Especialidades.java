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
	/*
	public static boolean AgregarEspecialidades( String id, String descripcion) throws SQLException {

		

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `especialidades`(`id`, `descripcion`) VALUES ('" + id + "','" +descripcion + "')";

		try {
			// SE REALIZA LA CONSULTA PARA OBTENER TODOS LOS DATOS DE LA DB
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}*/
}
