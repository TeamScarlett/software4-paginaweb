package pkt_consulta_diagnostico;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;



public class Tabla_Consulta_diagnostico extends pkt_conexion.enlace{
	
	public static LinkedList<Consulta_diagnostico> getConsulta_diagnostico() {
	
		LinkedList<Consulta_diagnostico> ListaConsulta_diagnostico = new LinkedList<Consulta_diagnostico>();

		Connection conexion = EnlacetoDB();
		
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
	
	public static boolean AgregarConsultaDiagnostico(int idcita,int idconsulta, int iddiagnostico,String observacion){	

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `consulta_diagnostico`(`id`, `idconsulta`, `iddiagnostico`, `observacion`) VALUES ('"+idcita +"','"+idconsulta+"','"+iddiagnostico+"','"+observacion+")";

		try {
			// SE REALIZA LA CONSULTA PARA OBTENER TODOS LOS DATOS DE LA DB
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
}
	
	
	
	


