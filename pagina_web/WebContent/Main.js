function form_add() {
	console.log("Mensaje");
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

function seleccionarDatos() {


	var table = document.getElementById("listado");
	var filas = document.getElementsByTagName('th').length;
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

seleccionarDatos();
