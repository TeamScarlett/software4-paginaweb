package pkt_usuarios;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

//import pkt_citas.Citas;

public class Tabla_usuarios extends pkt_conexion.enlace{

	public static LinkedList<Usuarios> getUsuarios() {

		// SE CREA LA LISTA DE TIPO CITAS

		LinkedList<Usuarios> ListaUsuarios = new LinkedList<Usuarios>();

		// SE OBTIENE LA CONEXION

		Connection conexion = EnlacetoDB();

		Statement statement = null;

		try {
			// SE REALIZA LA CONSULTA PARA OBTENER TODOS LOS DATOS DE LA DB
			statement = conexion.createStatement();
			ResultSet rs = statement.executeQuery("select * from citas");
			// MIENTRAS EXISTA UN SIGUIENTE REGISTRO SE CREA UN OBJETO DE TIPO CITAS

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

				// DESPUES DE AGREGAR TODOS LOS ATRIBUTOS A ESTE OBJETO
				// SE AGREGA A LA LISTA

				ListaUsuarios.add(Usuarios);

			}

			// SE CIERRAN LAS CONEXIONES
			rs.close();
			statement.close();
			conexion.close();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}

		// SE RETORNA LA LISTA
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