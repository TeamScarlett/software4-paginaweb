package pkt_diagnosticos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Diagnosticos extends pkt_conexion.enlace {

	public static LinkedList<Diagnosticos> getDiagnosticos() {

		LinkedList<Diagnosticos> ListaDiagnosticos = new LinkedList<Diagnosticos>();

		Connection conexion = EnlacetoDB();
		Statement statement = null;

		try {

			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from diagnosticos");

			while (rs.next()) {
				Diagnosticos diagnosticos = new Diagnosticos();
				diagnosticos.setId(rs.getInt(1));
				diagnosticos.setDescripcion(rs.getString(2));

				ListaDiagnosticos.add(diagnosticos);
			}

			rs.close();
			statement.close();
			conexion.close();
		}

		catch (SQLException e) {
			e.printStackTrace();
		}

		return ListaDiagnosticos;

	}

	public boolean AgregarDiagnosticos(int id, String descripcion) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `diagnosticos`(`id`, `descripcion`) VALUES ('" + id + "','" + descripcion + "')";

		try {

			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean EliminarDiagnosticos(int id) {
		Statement statement = null;
		String sql = "delete from `diagnosticos` where id='" + id + "')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean VerificarDiagnosticos(int id) {

		Statement statement = null;

		String sql = "SELECT * FROM `diagnosticos` WHERE `id` = '" + id + "' ";

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
	
	public boolean ActualizarDiagnostico(int idcita,String id, String descripcion) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `diagnosticos` SET `id`='"+id+"',`descripcion`='"+descripcion+"' WHERE id = '"+id+"'";
		
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