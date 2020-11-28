package pkt_citas;

public class Citas{
	
	

	// AQUI SE CREAN LOS ATRIBUTOS DE LA 
	
	

	private int Idcita;
	private String Idpaciente;
	private String Fecha;
	private String FechaConsulta;
	private int Idespecialidad;
	private String IdMedico;
	private String observacion;
	private int idUsuario;
	
	
	

	public int getIdcita() {
		return Idcita;
	}
	

	public void setIdcita(int idcita) {
		Idcita = idcita;
	}
	

	public String getIdpaciente() {
		return Idpaciente;
	}
	

	public void setIdpaciente(String idpaciente) {
		Idpaciente = idpaciente;
	
	}

	public String getFecha() {
		return Fecha;
	}
	

	public void setFecha(String fecha) {
		Fecha = fecha;
	}
	

	public String getFechaConsulta() {
		return FechaConsulta;
	}
	

	public void setFechaConsulta(String fechaConsulta) {
		FechaConsulta = fechaConsulta;
	}
	

	public int getIdespecialidad() {
		return Idespecialidad;
	}
	

	public void setIdespecialidad(int idespecialidad) {
		Idespecialidad = idespecialidad;
	}
	

	public String getIdMedico() {
		return IdMedico;
	}

	public void setIdMedico(String idMedico) {
		IdMedico = idMedico;
	}
	

	public String getObservacion() {
		return observacion;
	}
	

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}
	

	public int getIdUsuario() {
		return idUsuario;
	}
	

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
}
