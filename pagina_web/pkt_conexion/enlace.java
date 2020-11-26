package pkt_conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class enlace {
	
	   // Librería de MySQL
    public static String driver = "com.mysql.jdbc.Driver";

    // Nombre de la base de datos
    public static String database = "I2BmNBP62R";

    // Host
    public static String hostname = "remotemysql.com";

    // Puerto
    public static int port = 3306;

    // Ruta de nuestra base de datos (desactivamos el uso de SSL con "?useSSL=false")
    public static  String url = "jdbc:mysql://" + hostname + ":" + port + "/" + database + "?useSSL=false";

    // Nombre de usuario
    public static String user = "I2BmNBP62R";

    // Clave de usuario
    public static String pass = "vNJ4Wb7i53";
	
    public static Connection EnlacetoDB() {
    	try {
    		Class.forName(driver);
    	return DriverManager.getConnection(url,user,pass);
    	}
    	catch(SQLException | ClassNotFoundException e) {
    		e.printStackTrace();
    	}
		return null;
    }
    

}
