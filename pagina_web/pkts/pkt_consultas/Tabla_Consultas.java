package pkt_consultas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;

public class Tabla_Consultas extends pkt_conexion.enlace{
	
	public static LinkedList<Consultas> getConsultas() {
		
		LinkedList<Consultas> ListaConsultas = new LinkedList<Consultas>();
		 
		
		Connection conexion = EnlacetoDB();
		Statement statement = null;
	
		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from consulta");
			
			while(rs.next()) {
			Consultas consulta = new Consultas();
			consulta.setIdconsulta(rs.getInt(1));
			consulta.setPaciente(rs.getString(2));
			consulta.setFecha(rs.getDate(3).toString());
			consulta.setMedico(rs.getString(4));
			consulta.setObservacion(rs.getString(5));
			
			
			ListaConsultas.add(consulta);
			}
			
			rs.close();
			statement.close();
			conexion.close();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return ListaConsultas;
	}
	
	public boolean VerificarConsulta(int idconsulta) {
		

		Statement statement = null;
		
		String sql = "SELECT * FROM `consulta` WHERE `idconsulta` = '"+idconsulta+"' ";
		
		try {
		
		ResultSet rs = statement.executeQuery(sql);
		
		if(rs.getInt(0)==idconsulta) {
			return true;
		}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return false;
	}
	
	public boolean AgregarConsulta(int idconsulta,String paciente,String fecha,String medico,String observacion){	

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `consulta`(`idconsulta`, `paciente`, `fecha`, `medico`, `observacion`) VALUES ('"+idconsulta+"','"+paciente+"','"+fecha+"','"+medico+"','"+observacion+"')";

		try {
		
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	

	
	public boolean ActualizarConsulta(int idconsulta,String paciente,String fecha,String medico,String observacion) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `consulta` SET `idconsulta`='"+idconsulta+"',`paciente`='"+paciente+"',`fecha`='"+fecha+"',`idmedico`='"+medico+"',`observacion`='"+observacion+"', WHERE idconsulta = '"+idconsulta+"'";
	

		try {
			
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	
	public boolean EliminarConsulta(int idconsulta) {
		
		Statement statement = null;
		String sql = "DELETE  from `consulta` where idconsulta='"+idconsulta+"')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	
}


}
