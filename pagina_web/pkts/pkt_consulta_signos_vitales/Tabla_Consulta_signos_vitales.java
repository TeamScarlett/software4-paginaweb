package pkt_consulta_signos_vitales;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Consulta_signos_vitales extends pkt_conexion.enlace {

	public static LinkedList<Consulta_signos_vitales> getConsulta_signos_vitales() {

		LinkedList<Consulta_signos_vitales> ListaConsulta_signos_vitales = new LinkedList<Consulta_signos_vitales>();

		Connection conexion = EnlacetoDB();
		Statement statement = null;

		try {

			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from consulta_signos_vitales");

			while (rs.next()) {
				Consulta_signos_vitales consulta_signos_vitales = new Consulta_signos_vitales();
				consulta_signos_vitales.setId(rs.getInt(1));
				consulta_signos_vitales.setIdconsulta(rs.getInt(2));
				consulta_signos_vitales.setIdsigno_vital(rs.getInt(3));
				consulta_signos_vitales.setValor(rs.getFloat(4));

				ListaConsulta_signos_vitales.add(consulta_signos_vitales);
			}

			rs.close();
			statement.close();
			conexion.close();
		}

		catch (SQLException e) {
			e.printStackTrace();
		}

		return ListaConsulta_signos_vitales;

	}

	public boolean AgregarConsultaSignosVitales(int id, int idconsulta, int idsigno_vital, String valor) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `consulta_signos_vitales`(`id`, `idconsulta`, `idsigno_vital`, `valor`) VALUES ('" + id + "','"
				+ idconsulta + "','" + idsigno_vital + "','" + valor + "')";

		try {

			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean EliminarConsultaSignosVitales(int id) {
		Statement statement = null;
		String sql = "delete from `consulta_signos_vitales` where id='" + id + "')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean VerificarConsultaSignosVitales(int id) {

		Statement statement = null;

		String sql = "SELECT * FROM `consulta_signos_vitales` WHERE `id` = '" + id + "' ";

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

	public boolean ActualizarConsultaSignosVitales(int id, int idconsulta, int idsigno_vital, String valor) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `consulta_signos_vitales` SET `id`='"+id+"',`descripcion`='"+idconsulta+"',`idsigno_vital`='"+idsigno_vital+"', `valor`='"+valor+"' WHERE id = '"+id+"'";
		
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