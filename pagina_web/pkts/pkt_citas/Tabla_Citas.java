
package pkt_citas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;


public class Tabla_Citas extends pkt_conexion.enlace {

	private Statement statement;

	// SE CREA UNA FUNCION DE LINKEDLIST DE TIPO CITAS

	public static LinkedList<Citas> getCitas() {

		// SE CREA LA LISTA DE TIPO CITAS

		LinkedList<Citas> ListaCitas = new LinkedList<Citas>();

		// SE OBTIENE LA CONEXION

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			// SE REALIZA LA CONSULTA PARA OBTENER TODOS LOS DATOS DE LA DB
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from citas");
			// MIENTRAS EXISTA UN SIGUIENTE REGISTRO SE CREA UN OBJETO DE TIPO CITAS

			while (rs.next()) {
				Citas cita = new Citas();
				cita.setIdcita(rs.getInt(1));
				cita.setIdpaciente(rs.getString(2));
				cita.setFecha(rs.getDate(3).toString());
				cita.setFechaConsulta(rs.getString(4));
				cita.setIdespecialidad(rs.getInt(5));
				cita.setIdMedico(rs.getString(6));
				cita.setObservacion(rs.getString(7));
				cita.setIdUsuario(rs.getInt(8));

				// DESPUES DE AGREGAR TODOS LOS ATRIBUTOS A ESTE OBJETO
				// SE AGREGA A LA LISTA

				ListaCitas.add(cita);

			}

			// SE CIERRAN LAS CONEXIONES
			rs.close();
			statement.close();
			conexion.close();

		}

		catch (SQLException e) {
			e.printStackTrace();
		}

		// SE RETORNA LA LISTA
		return ListaCitas;
	}

	public boolean AgregarCita(int idcita,String idpaciente, String fecha, String fechaconsulta,
			int idespecialidad, String idmedico, String observacion,int idusuario){

		

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `citas`(`idcita`,`idpaciente`, `fecha`, `fechaconsulta`, `idespecialidad`, `idmedico`, `observacion`, `idusuario`) VALUES ('"+idcita+"','" + idpaciente + "','" + fecha + "','" + fechaconsulta + "','" + idespecialidad + "','"
				+ idmedico + "','" + observacion + "','" + idusuario + "')";
	

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
	public boolean EliminarCita(int idcita) {
		return true;
	}
	
	public boolean VerificarCita(int idcita) {
		

		statement = null;
		
		String sql = "SELECT * FROM `citas` WHERE `cita` = '"+idcita+"' ";
		
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
	
}