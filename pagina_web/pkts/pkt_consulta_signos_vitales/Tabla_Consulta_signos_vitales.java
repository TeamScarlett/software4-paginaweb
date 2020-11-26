package pkt_consulta_signos_vitales;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Consulta_signos_vitales {
	
	public static LinkedList<Consulta_signos_vitales> getConsulta_signos_vitales(){
		
		
		LinkedList<Consulta_signos_vitales> ListaConsulta_signos_vitales = new LinkedList<Consulta_signos_vitales>();
	
		pkt_conexion.enlace enlace = pkt_conexion.enlace.getInstancia();
		Connection conexion = enlace.EnlacetoDB();
		Statement statement = null;
	
		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from consulta_signos_vitales");
			
			while(rs.next()) {
				Consulta_signos_vitales consulta_signos_vitales = new Consulta_signos_vitales();
				consulta_signos_vitales.setId(rs.getInt(1));
				consulta_signos_vitales.setIdconsulta(rs.getInt(2));
				consulta_signos_vitales.setIdsignovital(rs.getInt(3));
				consulta_signos_vitales.setValor(rs.getFloat(4));
			
			
				ListaConsulta_signos_vitales.add(consulta_signos_vitales);
			}
			
			rs.close();
			statement.close();
			conexion.close();
		} 
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return ListaConsulta_signos_vitales;

}

}
