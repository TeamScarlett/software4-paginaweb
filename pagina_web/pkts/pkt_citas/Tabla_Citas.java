
package pkt_citas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;


public class Tabla_Citas extends pkt_conexion.enlace {

	
	public static LinkedList<Citas> getCitas() {
	

		LinkedList<Citas> ListaCitas = new LinkedList<Citas>();


		Connection conexion = EnlacetoDB();
		
		String sql = "SELECT citas.idcita,citas.idpaciente,citas.fecha,citas.fechaconsulta,especialidades.descripcion,citas.idmedico,citas.observacion,citas.idusuario\r\n"
				+ "FROM citas\r\n"
				+ "INNER JOIN especialidades\r\n"
				+ "ON citas.idespecialidad=especialidades.id";

		Statement statement = null;

		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			

			while (rs.next()) {
				Citas cita = new Citas();
				cita.setIdcita(rs.getInt(1));
				cita.setIdpaciente(rs.getString(2));
				cita.setFecha(rs.getDate(3).toString());
				cita.setFechaConsulta(rs.getString(4));
				cita.setIdespecialidad(rs.getString(5));
				cita.setIdMedico(rs.getString(6));
				cita.setObservacion(rs.getString(7));
				cita.setIdUsuario(rs.getInt(8));

				
				ListaCitas.add(cita);

			}

			
			rs.close();
			statement.close();
			conexion.close();

		}

		catch (SQLException e) {
			e.printStackTrace();
		}

		
		return ListaCitas;
	}
	
	public boolean VerificarCita(int idcita) {
		

		Statement statement = null;
		
		String sql = "SELECT * FROM `citas` WHERE `idcita` = '"+idcita+"' ";
		
		try {
		
		ResultSet rs = statement.executeQuery(sql);
		
		if(rs.getInt(0)==idcita) {
			return true;
		}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return false;
	}
	

	public boolean AgregarCita(int idcita,String idpaciente, String fecha, String fechaconsulta,
			int idespecialidad, String idmedico, String observacion,int idusuario){		

		Connection conexion = EnlacetoDB();
		Statement statement = null;
		

		String sql = "INSERT INTO `citas`(`idcita`,`idpaciente`, `fecha`, `fechaconsulta`, `idespecialidad`, `idmedico`, `observacion`, `idusuario`) VALUES ('"+idcita+"','" + idpaciente + "','" + fecha + "','" + fechaconsulta + "','" + idespecialidad + "','"+idmedico + "','" + observacion + "','" + idusuario + "')\n";
		
		try {
		
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
		
	}
	
	public boolean ActualizarCita(int idcita,String idpaciente, String fecha, String fechaconsulta,String idespecialidad, String idmedico, String observacion,int idusuario) {

		
		
		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `citas` SET `idpaciente`='"+idpaciente+"',`fecha`='"+fecha+"',`fechaconsulta`='"+fechaconsulta+"',`idespecialidad`='"+idespecialidad+"',`idmedico`='"+idmedico+"',`observacion`='"+observacion+"',`idusuario`='"+idusuario+"' WHERE idcita = '"+idcita+"'";
	

		try {
			
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean EliminarCita(int idcita) {
		
		Statement statement = null;
		String sql = "DELETE from `citas` where idcita='"+idcita+"')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	
}
	
	public static Citas ObtenerCita(int idcita) {
		Citas cita = new Citas();
		Connection conexion = EnlacetoDB();
		Statement statement = null;
		String sql =  "SELECT citas.idcita,citas.idpaciente,citas.fecha,citas.fechaconsulta,especialidades.descripcion,citas.idmedico,citas.observacion,citas.idusuario from citas\r\n" 
				+ "INNER JOIN especialidades ON citas.idespecialidad=especialidades.id\r\n"
				+ "where idcita='"+idcita+"'";
		try {
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()) {
			
			cita.setIdcita(rs.getInt(1));
			cita.setIdpaciente(rs.getString(2));
			cita.setFecha(rs.getString(3));
			cita.setFechaConsulta(rs.getString(4));
			cita.setIdespecialidad(rs.getString(5));
			cita.setIdMedico(rs.getString(6));
			cita.setObservacion(rs.getString(7));
			cita.setIdUsuario(rs.getInt(8));
			}
			
		} catch (Exception e) {                           
			e.printStackTrace();
			
		}
	return cita;
}
	
	
	
	
	public static LinkedList<Citas> ObtenerPaciente(String idpaciente) {
		
		
		LinkedList<Citas> ListaCitas = new LinkedList<Citas>();
		
		
		Statement statement = null;
		String sql = "SELECT citas.idcita,citas.idpaciente,citas.fecha,citas.fechaconsulta,especialidades.descripcion,citas.idmedico,citas.observacion,citas.idusuario from citas\r\n" 
				+ "INNER JOIN especialidades ON citas.idespecialidad=especialidades.id\r\n"
				+ "where idpaciente='"+idpaciente+"'";
		try {
			Connection conexion = EnlacetoDB();
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			
			while(rs.next()) {
				Citas cita = new Citas();
			cita.setIdcita(rs.getInt(1));
			cita.setIdpaciente(rs.getString(2));
			cita.setFecha(rs.getString(3));
			cita.setFechaConsulta(rs.getString(4));
			cita.setIdespecialidad(rs.getString(5));
			cita.setIdMedico(rs.getString(6));
			cita.setObservacion(rs.getString(7));
			cita.setIdUsuario(rs.getInt(8));
			ListaCitas.add(cita);
			}
			
		} catch (Exception e) {                           
			e.printStackTrace();
			
		}
		return ListaCitas;
		
	}
	
	public static LinkedList<Citas> BusquedaMedico(String medico) {
		
		LinkedList<Citas> ListaCitas = new LinkedList<Citas>();
		
		
		Statement statement = null;
		String sql = "SELECT citas.idcita,citas.idpaciente,citas.fecha,citas.fechaconsulta,especialidades.descripcion,citas.idmedico,citas.observacion,citas.idusuario from citas\r\n" 
				+ "INNER JOIN especialidades ON citas.idespecialidad=especialidades.id\r\n"
				+ "where idmedico='"+medico+"'";
		try {
			Connection conexion = EnlacetoDB();
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			
			while(rs.next()) {
				Citas cita = new Citas();
			cita.setIdcita(rs.getInt(1));
			cita.setIdpaciente(rs.getString(2));
			cita.setFecha(rs.getString(3));
			cita.setFechaConsulta(rs.getString(4));
			cita.setIdespecialidad(rs.getString(5));
			cita.setIdMedico(rs.getString(6));
			cita.setObservacion(rs.getString(7));
			cita.setIdUsuario(rs.getInt(8));
			ListaCitas.add(cita);
			}
			
		} catch (Exception e) {                           
			e.printStackTrace();
			
		}
		return ListaCitas;
	}
	
	 
	

}