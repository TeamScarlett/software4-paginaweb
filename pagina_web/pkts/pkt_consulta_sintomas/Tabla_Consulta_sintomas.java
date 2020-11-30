package pkt_consulta_sintomas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Consulta_sintomas extends pkt_conexion.enlace {

	public static LinkedList<Consulta_sintomas> getConsulta_sintomas() {

		LinkedList<Consulta_sintomas> ListaConsulta_sintomas = new LinkedList<Consulta_sintomas>();

		Connection conexion = EnlacetoDB();
		Statement statement = null;

		try {

			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from consulta_sintomas");

			while (rs.next()) {
				Consulta_sintomas consulta_sintomas = new Consulta_sintomas();
				consulta_sintomas.setId(rs.getInt(1));
				consulta_sintomas.setIdconsulta(rs.getInt(2));
				consulta_sintomas.setIdsintoma(rs.getInt(3));
				consulta_sintomas.setObservacion(rs.getString(4));

				ListaConsulta_sintomas.add(consulta_sintomas);
			}

			rs.close();
			statement.close();
			conexion.close();
		}

		catch (SQLException e) {
			e.printStackTrace();
		}

		return ListaConsulta_sintomas;

	}

	public boolean AgregarConsultaSintomas(int id, int idconsulta, int idsintoma, String observacion) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `consulta_sintomas`(`id`, `idconsulta`, `idrsintoma`, `observacion`) VALUES ('" + id
				+ "','" + idconsulta + "','" + idsintoma + "','" + observacion + "')";

		try {

			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean EliminarConsultaSintomas(int id) {
		Statement statement = null;
		String sql = "delete from `consulta_sintomas` where id='" + id + "')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean VerificarConsultaSintomas(int id) {

		Statement statement = null;

		String sql = "SELECT * FROM `consulta_sintomas` WHERE `id` = '" + id + "' ";

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

}

