package pkt_consultas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.LinkedList;

public class Tabla_Consultas {
	
	public static LinkedList<Consultas> getConsultas() {
		//SE CREA LA LISTA DE TIPO CITAS
		LinkedList<Consultas> ListaConsultas = new LinkedList<Consultas>();
		// SE OBTIENE LA CONEXION 
		pkt_conexion.enlace enlace = pkt_conexion.enlace.getInstancia();
		Connection conexion = enlace.EnlacetoDB();
		Statement statement = null;
	
		try {
			//SE REALIZA LA CONSULTA PARA OBTENER TODOS LOS DATOS DE LA DB
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from consulta");
			//MIENTRAS EXISTA UN SIGUIENTE REGISTRO SE CREA UN OBJETO DE TIPO CITAS
			while(rs.next()) {
			Consultas consulta = new Consultas();
			consulta.setIdconsulta(rs.getInt(1));
			consulta.setPaciente(rs.getString(2));
			consulta.setFecha(rs.getDate(3).toString());
			consulta.setMedico(rs.getString(4));
			consulta.setObservacion(rs.getString(5));
			
			//DESPUES DE AGREGAR TODOS LOS ATRIBUTOS A ESTE OBJETO
			//SE AGREGA A LA LISTA
			ListaConsultas.add(consulta);
			}
			//SE CIERRAN LAS CONEXIONES
			rs.close();
			statement.close();
			conexion.close();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		//SE RETORNA LA LISTA
		return ListaConsultas;
	}

}
