package pkt_conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class enlace {

	//variable tipo Connection para hacer conexion con MySQL
    private static enlace instancia;
    
    
    private enlace() {
    	
    }
    
    public static enlace getInstancia() {
    	if(instancia==null) {
    		return instancia = new enlace();
    	}else {
    		return instancia;
    	}
    }
    
    public Connection EnlacetoDB(){
    	Connection conexion=null;
    	
    	try{
            //controlador, "direccion"
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e){
            System.out.println("controlador "+ e);
        }

        try {
            //variable igualada a la conexion del matodo "DriverManager.getConnection"
            //utilizando la url, nombre de usuario y contrase?a
        	
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectweb_soft4", "PROYECTO" , "ADMIN");
            System.out.println("Conexion estalecida");
            
        }
        catch (SQLException e){
            System.out.println("error al conectar"+ e);
        
        //retornamos la conexion
        
    }
        return conexion;
        }
    

}
