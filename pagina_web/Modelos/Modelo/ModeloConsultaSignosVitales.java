package Modelo;

import pkt_consulta_signos_vitales.Tabla_Consulta_signos_vitales;

public class ModeloConsultaSignosVitales {
		Tabla_Consulta_signos_vitales ModeloConsultaSignosVitales = new Tabla_Consulta_signos_vitales();
		
		public boolean VerificarConsultaSignosVitales(int id) {
			return ModeloConsultaSignosVitales.VerificarConsultaSignosVitales(id);
		}
		public boolean AgregarConsultaSignosVitales(int id, int idconsulta, int idsignovital, String valor) {
			return ModeloConsultaSignosVitales.AgregarConsultaSignosVitales(id, idconsulta, idsignovital, valor);
		}
		public boolean ActualizarConsultaSignosVitales(int id, int idconsulta, int idsignovital, String valor) {
			return ModeloConsultaSignosVitales.ActualizarConsultaSignosVitales(id, idconsulta, idsignovital, valor);
		}
		public boolean EliminarConsultaSignosVitales(int id) {
			return ModeloConsultaSignosVitales.EliminarConsultaSignosVitales(id);
		}
		
}
