package pkt_estados;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

//import pkt_estados.Estados;

public class Tabla_Estados extends pkt_conexion.enlace{

	public static LinkedList<Estados> getEstados() {
		
		LinkedList<Estados> ListaEstados = new LinkedList<Estados>();
		
		Connection conexion = EnlacetoDB();
		Statement statement = null;
		
		try {
			//SE REALIZA LA CONSULTA PARA OBTENER TODOS LOS DATOS DE LA DB
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from estados");
			//MIENTRAS EXISTA UN SIGUIENTE REGISTRO SE CREA UN OBJETO DE TIPO CITAS
			while(rs.next()) {
			Estados estados = new Estados();
			estados.setId(rs.getInt(1));
			estados.setDescripcion(rs.getString(2));
			estados.setEntidad(rs.getInt(3));
			
			
			//DESPUES DE AGREGAR TODOS LOS ATRIBUTOS A ESTE OBJETO
			//SE AGREGA A LA LISTA
			ListaEstados.add(estados);
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
		return ListaEstados;
	}
	
}

