
function form_add() {
	add.value = "add";
	sub_add.submit();
}

function form_edit() {
	edit.value = "edit";
	sub_edit.submit();
}

function form_del() {
	del.value = "del";
	sub_del.submit();
}

function form_paciente(){
	Bpaciente.value = "Bpaciente";
	sub_paciente.submit();
}

function form_medico(){
	Bmedico.value = "Bmedico";
	sub_medico.submit();
}

function form_bcita(){
	BCita.value = "BCita";
	sub_bcita.submit();
}

function form_consulta(){
	CDatos.value= "CDatos";
	sub_consulta.submit();
}

function ConsultarDatos(){
	
	
	let table = document.getElementById("listado");
	let filas = document.getElementsByTagName('th').length;
	document.getElementById('btn_consulta').onclick = function() {
		for (var i = 0; i < table.rows.length; i++) {
			table.rows[i].onclick = function() {

				for (var x = 0; x < filas - 2 ; x++) {
					let fila = "consulta" + x;
					
					document.getElementById(fila).value = this.cells[x].innerHTML;
				}
			};


		}
	};
}

function ModificarDatos() {


	let table = document.getElementById("listado");
	let filas = document.getElementsByTagName('th').length;
	document.getElementById('btn_edit').onclick = function() {
		for (var i = 0; i < table.rows.length; i++) {
			table.rows[i].onclick = function() {

				for (var x = 0; x < filas - 2; x++) {
					let fila = "data_edit" + x;
					
					document.getElementById(fila).value = this.cells[x].innerHTML;
				}
			};


		}
	};
	
}
function EliminarDatos(){
	
	let table = document.getElementById("listado");
	document.getElementById('btn_del').onclick = function() {

		for (var i = 0; i < table.rows.length; i++) {
			table.rows[i].onclick = function() {
				
				for (var x = 0; x < 2 ; x++) {
					let fila = "data_del" + x;
			
					document.getElementById(fila).value = this.cells[x].innerHTML;
				}
				

			};
		}
	};
}

ModificarDatos();
EliminarDatos();
ConsultarDatos();