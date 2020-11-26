package pkt_consulta_diagnostico;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;


public class Tabla_Consulta_diagnostico {
	
	public static LinkedList<Consulta_diagnostico> getConsulta_diagnostico() {
	
		LinkedList<Consulta_diagnostico> ListaConsulta_diagnostico = new LinkedList<Consulta_diagnostico>();
		
		pkt_conexion.enlace enlace = pkt_conexion.enlace.getInstancia();
		Connection conexion = enlace.EnlacetoDB();
		Statement statement = null;
	
		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from consulta_diagnostico");
			
			while(rs.next()) {
				Consulta_diagnostico consulta_diag = new Consulta_diagnostico();
				consulta_diag.setId(rs.getInt(1));
				consulta_diag.setIdconsulta(rs.getInt(2));
				consulta_diag.setIddiagnostico(rs.getInt(3));
				consulta_diag.setObservacion(rs.getString(4));
			
		
				ListaConsulta_diagnostico.add(consulta_diag);
			}
			
			rs.close();
			statement.close();
			conexion.close();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		

		return ListaConsulta_diagnostico;
	}
	
	
	
	

}
