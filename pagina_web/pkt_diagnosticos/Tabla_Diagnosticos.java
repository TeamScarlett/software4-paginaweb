package pkt_diagnosticos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Diagnosticos extends pkt_conexion.enlace{
	
public static LinkedList<Diagnosticos> getDiagnosticos(){
		
		
		LinkedList<Diagnosticos> ListaDiagnosticos = new LinkedList<Diagnosticos>();
	
		
		Connection conexion = EnlacetoDB();
		Statement statement = null;
	
		try {
			
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from diagnosticos");
			
			while(rs.next()) {
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

}
