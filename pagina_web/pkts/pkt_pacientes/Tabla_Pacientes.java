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
				pacientes.setCedula(rs.getString(2));
				pacientes.setNombre(rs.getString(3));
				pacientes.setApellido(rs.getString(4));
				pacientes.setDireccion(rs.getString(5));
				pacientes.setEmail(rs.getString(7));
				pacientes.setPass(rs.getString(8));
				pacientes.setCelular(rs.getString(9));

			

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
	public boolean AgregarPacientes(int id,String cedula,String nombre,String apellido,String direccion,String email,String password,String celular){
	
		Connection conexion = EnlacetoDB();
		Statement statement = null;

		String sql = "INSERT INTO `pacientes`(`id`, `cedula`, `nombre`, `apellido`, `direccion`, `email`, `PASSWORD`, `celular`) VALUES ('" + id + "','"+cedula+"','" + nombre + "','" + apellido +
				"','"+ direccion + "','" + email + "','"+password+"','" + celular + "')";

		try {
			
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	
	public boolean VerificarPacientes(int id) {
		
		Statement statement = null;
		
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
	}
public boolean EliminarPacientes(int id) {
		
		Statement statement = null;
		
		String sql = "delete from `pacientes` where id='"+id+"')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	

	public boolean ActualizarPacientes(int id,String nombre, String apellido, String cedula, String celular, String direccion, String email) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `pacientes` SET `id`='"+id+"',`nombre`='"+nombre+"',`apellido`='"+apellido+"',`cedula`='"+cedula+"',`celular`=`"+celular+"',`direccion`='"+direccion+"' ,`email`='"+email+"' WHERE `id` = '"+id+"'";
	

		try {
			 
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}

}
