package pkt_consulta_signos_vitales;

public class Consulta_signos_vitales {

	private int id;
	private int idconsulta;
	private String idsigno_vital;
	private String valor;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdconsulta() {
		return idconsulta;
	}
	public void setIdconsulta(int idconsulta) {
		this.idconsulta = idconsulta;
	}
	public String getIdsigno_vital() {
		return idsigno_vital;
	}
	public void setIdsigno_vital(String idsigno_vital) {
		this.idsigno_vital = idsigno_vital;
	}
	public String getValor() {
		return valor;
	}
	public void setValor(String valor) {
		this.valor = valor;
	}

}
