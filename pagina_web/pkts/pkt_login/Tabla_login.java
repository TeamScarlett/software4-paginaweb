package pkt_login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Tabla_login extends pkt_conexion.enlace{

	
	public boolean VerificarUsuario(String user,String pass) {
		boolean condicion=false;
		Connection conexion = EnlacetoDB();
		Statement statement = null;
		String SQL = "SELECT CEDULA,PASSWORD FROM login WHERE CEDULA = '"+user+"' AND PASSWORD='"+pass+"' ";
		try {
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery(SQL);
			if(!rs.next()) {
				return false;
			}
			if(rs.getString(1).equals(user) && (rs.getString(2).equals(pass))) {
				return condicion=true;
			
			}else {
				return condicion=false;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}		
		return condicion;
	}
	
}
