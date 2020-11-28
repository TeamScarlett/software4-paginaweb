package pkt_pacientes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

//import pkt_citas.Citas;

public class Tabla_Pacientes extends pkt_conexion.enlace{

	public static LinkedList<Pacientes> getPacientes() {

		// SE CREA LA LISTA DE TIPO CITAS

		LinkedList<Pacientes> ListaPacientes = new LinkedList<Pacientes>();

		// SE OBTIENE LA CONEXION

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			// SE REALIZA LA CONSULTA PARA OBTENER TODOS LOS DATOS DE LA DB
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from citas");
			// MIENTRAS EXISTA UN SIGUIENTE REGISTRO SE CREA UN OBJETO DE TIPO CITAS

			while (rs.next()) {
				Pacientes pacientes = new Pacientes();
				pacientes.setId(rs.getInt(1));
				pacientes.setNombre(rs.getString(2));
				pacientes.setApellido(rs.getString(3));
				pacientes.setCedula(rs.getString(4));
				pacientes.setCelular(rs.getString(5));
				pacientes.setDireccion(rs.getString(6));
				pacientes.setEmail(rs.getString(7));

				// DESPUES DE AGREGAR TODOS LOS ATRIBUTOS A ESTE OBJETO
				// SE AGREGA A LA LISTA

				ListaPacientes.add(pacientes);

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
		return ListaPacientes;
	}
	public static boolean AgregarCita( String idpaciente, String fecha, String fechaconsulta,
			String especialidad, String idmedico, String observacion, String idusuario) throws SQLException {

		

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `citas`(`idpaciente`, `fecha`, `fechaconsulta`, `idespecialidad`, `idmedico`, `observacion`, `idusuario`) VALUES ('" + idpaciente + "','" + fecha + "','" + fechaconsulta + "','" + especialidad + "','"
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
}
