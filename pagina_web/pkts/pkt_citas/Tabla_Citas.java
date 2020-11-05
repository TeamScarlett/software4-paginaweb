package pkt_citas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;


import pkt_clases.Citas;



public class Tabla_Citas{


	public static LinkedList<Citas> getCitas() {
		LinkedList<Citas> ListaCitas = new LinkedList<Citas>();
		pkt_conexion.enlace enlace = pkt_conexion.enlace.getInstancia();
		Connection conexion = enlace.EnlacetoDB();
		Statement statement = null;
		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from citas");
			while(rs.next()) {
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
			
			rs.close();
			statement.close();
			conexion.close();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return ListaCitas;
	}

	


}
