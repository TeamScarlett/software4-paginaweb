package pkt_consulta_laboratorio;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Tabla_Consulta_laboratorio {
	
	public static LinkedList<Consulta_laboratorio> getConsulta_laboratorio(){
		
		
				LinkedList<Consulta_laboratorio> ListaConsulta_laboratorio = new LinkedList<Consulta_laboratorio>();
			
				pkt_conexion.enlace enlace = pkt_conexion.enlace.getInstancia();
				Connection conexion = enlace.EnlacetoDB();
				Statement statement = null;
			
				try {
					
					statement = conexion.createStatement();
					ResultSet rs = statement.executeQuery("select * from consulta_laboratorios");
					
					while(rs.next()) {
						Consulta_laboratorio consulta_laboratorio = new Consulta_laboratorio();
						consulta_laboratorio.setId(rs.getInt(1));
						consulta_laboratorio.setIdconsulta(rs.getInt(2));
						consulta_laboratorio.setIddiagnostico(rs.getInt(3));
						consulta_laboratorio.setOtro(rs.getString(4));
					
					
					ListaConsulta_laboratorio.add(consulta_laboratorio);
					}
					
					rs.close();
					statement.close();
					conexion.close();
				} 
				
				catch (SQLException e) {
					e.printStackTrace();
				}
				
				return ListaConsulta_laboratorio;
		
		}

}
