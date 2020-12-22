package pkt_consulta_diagnostico;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;

public class Tabla_Consulta_diagnostico extends pkt_conexion.enlace {

	public static LinkedList<Consulta_diagnostico> getConsulta_diagnostico() {

		LinkedList<Consulta_diagnostico> ListaConsulta_diagnostico = new LinkedList<Consulta_diagnostico>();

		Connection conexion = EnlacetoDB();

		Statement statement = null;
		
		String SQL = "SELECT consulta_diagnostico.id,consulta_diagnostico.idconsulta,diagnosticos.descripcion,consulta_diagnostico.observacion FROM consulta_diagnostico\r\n"
				+ "INNER JOIN diagnosticos\r\n"
				+ "ON consulta_diagnostico.iddiagnostico=diagnosticos.id";

		try {

			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery(SQL);

			while (rs.next()) {
				Consulta_diagnostico consulta_diag = new Consulta_diagnostico();
				consulta_diag.setId(rs.getInt(1));
				consulta_diag.setIdconsulta(rs.getInt(2));
				consulta_diag.setIddiagnostico(rs.getString(3));
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
	


	public boolean AgregarConsultaDiagnostico(int id, int idconsulta, int iddiagnostico, String observacion) {


		Connection conexion = EnlacetoDB();

		Statement statement = null;


		String sql = "INSERT INTO `consulta_diagnostico`(`id`, `idconsulta`, `iddiagnostico`, `observacion`) VALUES ('"+id +"','"+idconsulta+"','"+iddiagnostico+"','"+observacion+")";


		try {
			
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean EliminarConsultaDiagnostico(int id) {
		Statement statement = null;
		String sql = "delete from `consulta_diagnostico` where id='" + id + "')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean VerificarConsultaDiagnostico(int id) {

		Statement statement = null;

		String sql = "SELECT * FROM `consulta_diagnostico` WHERE `id` = '" + id + "' ";

		try {

			ResultSet rs = statement.executeQuery(sql);

			if (rs.getInt(0) == id) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;
	}


public boolean ActualizarConsultaDiagnosticos(int id, int idconsulta, int iddiagnostico, String observacion) {

	Connection conexion = EnlacetoDB();

	Statement statement = null;

	String sql = "UPDATE `consulta_diagnostico` SET `id`='"+id+"',`descripcion`='"+idconsulta+"',`iddiagnostico`='"+iddiagnostico+"', `observacion`='"+observacion+"' WHERE id = '"+id+"'";
	
	try {	
		statement = conexion.createStatement();					
		statement.executeUpdate(sql);	
		return true;
	} catch (Exception e) {                           
		e.printStackTrace();
		return false;
	}
}

public static Consulta_diagnostico ConsultarDatos(int id) {
	
	Consulta_diagnostico consulta_diag = new Consulta_diagnostico();
	
	Connection conexion = EnlacetoDB();

	Statement statement = null;


	String sql = "SELECT consulta_diagnostico.id,consulta_diagnostico.idconsulta,diagnosticos.descripcion,consulta_diagnostico.observacion FROM consulta_diagnostico INNER JOIN diagnosticos ON consulta_diagnostico.iddiagnostico=diagnosticos.id where consulta_diagnostico.idconsulta = '"+id+"'";


	try {
		
		statement = conexion.createStatement();
		
		ResultSet rs = statement.executeQuery(sql);
		while (rs.next()) {
			
			consulta_diag.setId(rs.getInt(1));
			consulta_diag.setIdconsulta(rs.getInt(2));
			consulta_diag.setIddiagnostico(rs.getString(3));
			consulta_diag.setObservacion(rs.getString(4));

		}

		
	} catch (Exception e) {
		e.printStackTrace();
		
	}
	return consulta_diag;
}
} 
	
	

	
	
	
	





