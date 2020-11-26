package pkt_conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {

	//variable tipo Connection para hacer conexion con MySQL
    
    	private static String User = "I2BmNBP62R";
    	private static String Pass = "vNJ4Wb7i53";
    	private static String host = "remotemysql.com";
    	private static int port = 3306;
    	private static String db = "I2BmNBP62R";   	
    	private static String url = String.format("jdbc:mysql://%s:%d/%s?useSSL=false", host, port, db);
    	
    	public static Connection EnlacetoDB() throws SQLException, ClassNotFoundException{
    	Class.forName("com.mysql.jdbc.Driver");
         return DriverManager.getConnection(url,User,Pass);
    
    }
    	
	public static boolean desconectar(Connection con) {
		if (con != null) {

			try {
				con.close();
				return true;
			} catch (SQLException ex) {

			}

		}
		return false;
	}
}
