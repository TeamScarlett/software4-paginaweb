package pkt_consulta_laboratorio;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Consulta_laboratorio extends pkt_conexion.enlace {

	public static LinkedList<Consulta_laboratorio> getConsulta_laboratorio() {

		LinkedList<Consulta_laboratorio> ListaConsulta_laboratorio = new LinkedList<Consulta_laboratorio>();

		Connection conexion = EnlacetoDB();
		Statement statement = null;
		String SQL = "SELECT consulta_laboratorios.id,consulta_laboratorios.idconsulta,recetas.descripcion,consulta_laboratorios.otro FROM consulta_laboratorios INNER JOIN recetas on consulta_laboratorios.idreceta = recetas.id";
		try {

			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery(SQL);

			while (rs.next()) {
				Consulta_laboratorio consulta_laboratorio = new Consulta_laboratorio();
				consulta_laboratorio.setId(rs.getInt(1));
				consulta_laboratorio.setIdconsulta(rs.getInt(2));
				consulta_laboratorio.setIdreceta(rs.getString(3));
				consulta_laboratorio.setOtro(rs.getString(4));

				ListaConsulta_laboratorio.add(consulta_laboratorio);
			}

			rs.close();
			statement.close();
			conexion.close();
		}

		catch (SQLException e) {
			e.printStackTrace();
		}


		return ListaConsulta_laboratorio;

	}


	public boolean AgregarConsultaLaboratorio(int id, int idconsulta, int idreceta, String otro) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;



		String sql = "INSERT INTO `consulta_laboratorios`(`id`, `idconsulta`, `idreceta`, `otro`) VALUES ('" + id+ "','" + idconsulta + "','" + idreceta + "','" + otro + "')";

		try {
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean EliminarConsultaLaboratorios(int id) {
		Statement statement = null;
		String sql = "delete from `consulta_laboratorios` where id='" + id + "')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean VerificarConsultaLaboratorios(int id) {

		Statement statement = null;

		String sql = "SELECT * FROM `consulta_laboratorios` WHERE `id` = '" + id + "' ";

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

	
	public boolean ActualizarConsultaLaboratorios(int id, int idconsulta, int idreceta, String otro) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `consulta_laboratorios` SET `id`='"+id+"',`descripcion`='"+idconsulta+"',`idreceta`='"+idreceta+"', `observacion`='"+otro+"' WHERE id = '"+id+"'";
		
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



