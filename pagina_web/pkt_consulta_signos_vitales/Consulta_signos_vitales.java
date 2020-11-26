package pkt_consulta_signos_vitales;

public class Consulta_signos_vitales {

	private int id;
	private int idconsulta;
	private int idsignovital;
	private float valor;
	
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
	public int getIdsignovital() {
		return idsignovital;
	}
	public void setIdsignovital(int idsignovital) {
		this.idsignovital = idsignovital;
	}
	public float getValor() {
		return valor;
	}
	public void setValor(float valor) {
		this.valor = valor;
	}

}
