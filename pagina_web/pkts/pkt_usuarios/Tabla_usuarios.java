package pkt_usuarios;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;



public class Tabla_usuarios extends pkt_conexion.enlace{

	public static LinkedList<Usuarios> getUsuarios() {



		LinkedList<Usuarios> ListaUsuarios = new LinkedList<Usuarios>();



		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
	
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from usuarios");
	

			while (rs.next()) {
				Usuarios Usuarios = new Usuarios();
				Usuarios.setId(rs.getInt(1));
				Usuarios.setCedula(rs.getString(2));
				Usuarios.setNombre(rs.getString(3));
				Usuarios.setApellido(rs.getString(4));
				Usuarios.setDireccion(rs.getString(5));
				Usuarios.setEmail(rs.getString(6));
				Usuarios.setPassword(rs.getString(7));
				Usuarios.setCelular(rs.getString(8));
				Usuarios.setIdtipousuario(rs.getInt(9));
				Usuarios.setIdestado(rs.getInt(10));

			

				ListaUsuarios.add(Usuarios);

			}

			
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		return ListaUsuarios;
	}
	public boolean VerificarUsuario(int id) {
		

		Statement statement = null;
		
		String sql = "SELECT * FROM `usuarios` WHERE `id` = '"+id+"' ";
		
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
	
	public boolean AgregarUsuario(int id,String cedula,String nombre,String apellido,String direccion,String email,String password,String celular,int idtipousuario,int idestado){

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "INSERT INTO `usuarios`(`id`, `cedula`, `nombre`, `apellido`, `direccion`, `email`, `PASSWORD`, `celular`, `idtipousuario`, `idestado`) VALUES ('"+id+"','"+cedula+"','"+nombre+"','"+apellido+"','"+direccion+"','"+email+"','"+password+"','"+celular+"','"+idtipousuario+"','"+idestado+"')";
	
		try {
			
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean ActualizarUsuario(int id,String cedula,String nombre,String apellido,String direccion,String email,String password,String celular,int idtipousuario,int idestado){ {

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		String sql = "UPDATE `usuarios` SET `id`='"+id+"',`cedula`='"+cedula+"',`nombre`='"+nombre+"',`apellido`='"+apellido+"',`direccion`='"+direccion+"',`email`='"+email+"',`PASSWORD`='"+password+"',`celular`='"+celular+"',`idtipousuario`='"+idtipousuario+"',`idestado`='"+idestado+"' WHERE = '"+id+"'";
	

		try {
			 
			statement = conexion.createStatement();					
			statement.executeUpdate(sql);	
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	}
	
	}
	
	
	
	
	public boolean EliminarUsuario(int id) {
		
		Statement statement = null;
		String sql = "DELETE from `usuarios` where id='"+id+"')";
		try {
			statement.executeUpdate(sql);
			return true;
		} catch (Exception e) {                           
			e.printStackTrace();
			return false;
		}
	
}

}