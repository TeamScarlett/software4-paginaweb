package pkt_consulta_recetas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

import pkt_consulta_laboratorio.Consulta_laboratorio;

public class Tabla_Consulta_recetas extends pkt_conexion.enlace {

	public static LinkedList<Consulta_recetas> getConsulta_recetas() {

		LinkedList<Consulta_recetas> ListaConsulta_recetas = new LinkedList<Consulta_recetas>();

		Connection conexion = EnlacetoDB();

		Statement statement = null;
		
		String SQL = "SELECT consulta_recetas.id,consulta_recetas.idconsulta,recetas.descripcion,consulta_recetas.otro FROM `consulta_recetas` INNER JOIN recetas ON consulta_recetas.idrecetas=recetas.id";

		try {

			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from consulta_recetas");

			while (rs.next()) {
				Consulta_recetas consulta_recetas = new Consulta_recetas();
				consulta_recetas.setId(rs.getInt(1));
				consulta_recetas.setIdconsulta(rs.getInt(2));
				consulta_recetas.setIdrecetas(rs.getString(3));
				consulta_recetas.setOtro(rs.getString(4));

				ListaConsulta_recetas.add(consulta_recetas);
			}

			rs.close();
			statement.close();
			conexion.close();
		}

		catch (SQLException e) {
			e.printStackTrace();
		}

		return ListaConsulta_recetas;
	}

	public boolean AgregarConsultaReceta(int id, int idconsulta, int idrecetas, String otro) {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `consulta_recetas`(`id`, `idconsulta`, `idrecetas`, `otro`) VALUES ('" + id + "','"
				+ idconsulta + "','" + idrecetas + "','" + otro + "')";

		try {
			
			statement = conexion.createStatement();
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean EliminarConsultaRecetas(int id) {
		Statement statement = null;
		String sql = "delete from `consulta_recetas` where id='" + id + "')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean VerificarConsultaRecetas(int id) {

		Statement statement = null;

		String sql = "SELECT * FROM `consulta_recetas` WHERE `id` = '" + id + "' ";

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
	
	public boolean ActualizarConsultaRecetas(int id, int idconsulta, int idrecetas, String otro) {


		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `consulta_recetas` SET `id`='"+id+"',`descripcion`='"+idconsulta+"',`idrecetas`='"+idrecetas+"', `otro`='"+otro+"' WHERE id = '"+id+"'";
		
		try {	
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	public static Consulta_recetas ConsultarDatos(int id) {
		
		Consulta_recetas consulta_rec = new Consulta_recetas();
		
		Connection conexion = EnlacetoDB();

		Statement statement = null;


		String sql = "SELECT consulta_recetas.id,consulta_recetas.idconsulta,recetas.descripcion,consulta_recetas.otro FROM `consulta_recetas` INNER JOIN recetas ON consulta_recetas.idrecetas=recetas.id where consulta_recetas.idconsulta = '"+id+"'";


		try {
			
			statement = conexion.createStatement();
			
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
			
				consulta_rec.setId(rs.getInt(1));
				consulta_rec.setIdconsulta(rs.getInt(2));
				consulta_rec.setIdrecetas(rs.getString(3));
				consulta_rec.setOtro(rs.getString(4));

			}

			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return consulta_rec;
	}
	
	
	
}

