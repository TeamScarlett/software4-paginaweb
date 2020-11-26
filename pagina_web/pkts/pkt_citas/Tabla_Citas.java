package pkt_citas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;

import pkt_conexion.Conexion;

public class Tabla_Citas extends Conexion {


	public static LinkedList<Citas> getCitas() throws ClassNotFoundException, SQLException {



		LinkedList<Citas> ListaCitas = new LinkedList<Citas>();


		Connection conexion = EnlacetoDB();

		Statement statement = null;

		statement = conexion.createStatement();
		
		ResultSet rs = statement.executeQuery("select * from citas");


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

			ListaCitas.add(cita);

		}
		return ListaCitas;
	}

	public static boolean AgregarCita(String idpaciente, String fecha, String fechaconsulta, String especialidad,
			String idmedico, String observacion, String idusuario) throws SQLException, ClassNotFoundException {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `citas`(`idpaciente`, `fecha`, `fechaconsulta`, `idespecialidad`, `idmedico`, `observacion`, `idusuario`) VALUES ('"
				+ idpaciente + "','" + fecha + "','" + fechaconsulta + "','" + especialidad + "','" + idmedico + "','"
				+ observacion + "','" + idusuario + "')";

		statement = conexion.createStatement();
		statement.executeUpdate(sql);

		return true;

	}
}
