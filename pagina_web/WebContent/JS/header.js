function cambiarClaseNav(){
	document.getElementById('nav_consultas-menu').onclick = function(){
		document.getElementById('nav_consultas-menu').className = "nav-link active dropdown-toggle";
	}
	
}

function cambiarNavCita(){
	document.getElementById('nav_citas').onclick = function(){
		document.getElementById('nav_citas').className = 'nav-link active'
	}
}
cambiarNavCita();
cambiarClaseNav();