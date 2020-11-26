package pkt_consulta_recetas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Consulta_recetas extends pkt_conexion.enlace{
	
	public static LinkedList<Consulta_recetas> getConsulta_recetas(){
		
		
		LinkedList<Consulta_recetas> ListaConsulta_recetas = new LinkedList<Consulta_recetas>();
	
		Connection conexion = EnlacetoDB();
		
		Statement statement = null;
	
		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from consulta_recetas");
			
			while(rs.next()) {
				Consulta_recetas consulta_recetas = new Consulta_recetas();
				consulta_recetas.setId(rs.getInt(1));
				consulta_recetas.setIdconsulta(rs.getInt(2));
				consulta_recetas.setIddiagnostico(rs.getInt(3));
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

}
