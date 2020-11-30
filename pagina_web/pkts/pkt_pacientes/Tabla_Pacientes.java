package pkt_pacientes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;



public class Tabla_Pacientes extends pkt_conexion.enlace{

	public static LinkedList<Pacientes> getPacientes() {

		

		LinkedList<Pacientes> ListaPacientes = new LinkedList<Pacientes>();

		

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from pacientes");
			

			while (rs.next()) {
				Pacientes pacientes = new Pacientes();
				pacientes.setId(rs.getInt(1));
				pacientes.setNombre(rs.getString(2));
				pacientes.setApellido(rs.getString(3));
				pacientes.setCedula(rs.getString(4));
				pacientes.setCelular(rs.getString(5));
				pacientes.setDireccion(rs.getString(6));
				pacientes.setEmail(rs.getString(7));

			

				ListaPacientes.add(pacientes);

			}

			
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		
		return ListaPacientes;
	}
	public boolean AgregarPacientes( int id, String nombre, String apellido,
			String cedula, String celular, String direccion, String email) throws SQLException {
	
		Connection conexion = EnlacetoDB();
		Statement statement = null;

		String sql = "INSERT INTO `pacientes`(`id`, `nombre`, `apellido`, `cedula`, `celular`, `direccion`, `email`) VALUES ('" + id + "','" + nombre + "','" + apellido +
				"','" + cedula + "','"+ celular + "','" + direccion + "','" + email + "')";

		try {
			
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	public boolean EliminarPacientes(int id) {
		return true;
	}
	
	/*public boolean VerificarPacientes(int id) {
		
		statement = null;
		
		String sql = "SELECT * FROM `pacientes` WHERE `id` = '"+id+"' ";
		
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
}
