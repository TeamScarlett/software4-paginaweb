package pkt_conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class enlace {

	//variable tipo Connection para hacer conexion con MySQL
    protected static Connection conexion;
    protected static Connection EnlacetoDB(){
    	
    	try{
            //controlador, "direccion"
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e){
            System.out.println("controlador "+ e);
        }
    	conexion = null;

        try {
            //variable igualada a la conexion del matodo "DriverManager.getConnection"
            //utilizando la url, nombre de usuario y contrase?a
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectweb_soft4", "PROYECTO" , "ADMIN");
            System.out.println("Conexion estalecida");

        }catch (SQLException e){
            System.out.println("error al conectar"+ e);
        }
        //retornamos la conexion
        return conexion;

    }

}
