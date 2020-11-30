package pkt_laboratorios;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;


public class Tabla_Laboratorios extends pkt_conexion.enlace{
	
public static LinkedList<Laboratorios> getLaboratorios(){
		
		LinkedList<Laboratorios> ListaLaboratorios = new LinkedList<Laboratorios>();

		Connection conexion = EnlacetoDB();
		
		Statement statement = null;
	
		try {
		statement = conexion.createStatement();
		ResultSet rs = statement.executeQuery("select * from laboratorios");

		while(rs.next()){
			Laboratorios laboratorios = new Laboratorios();
			laboratorios.setId(rs.getInt(1));
			laboratorios.setDescripcion(rs.getString(2));
		
		ListaLaboratorios.add(laboratorios);
		}
		rs.close();
		statement.close();
		conexion.close();

		}
		catch(SQLException e) {
		e.printStackTrace();
		}
		return ListaLaboratorios;
		}
public  boolean AgregarLaboratorio( int id, String descripcion) {
	
	Connection conexion = EnlacetoDB();
	Statement statement = null;

	String sql = "INSERT INTO `laboratorios`(`id`, `descripcion`, `entidad`) VALUES ('" + id + "','" +descripcion + "')";

	try {
		statement = conexion.createStatement();
		statement.executeUpdate(sql);
		return true;
	} catch (Exception e) {                           
		e.printStackTrace();
		return false;
	}
}
public boolean EliminarLaboratorios(int id) {
	return true;
}
	public boolean VerificarLaboratorios(int id) {
	
	Statement statement = null;
	
	String sql = "SELECT * FROM `laboratorios` WHERE `id` = '"+id+"' ";
	
	try {	
	ResultSet rs = statement.executeQuery(sql);
	
	if(rs.getInt(0)==id) {
		return true;
	}
	}
	catch(Exception e) {
		e.printStackTrace();			
	}
	return false;
	
}
}
