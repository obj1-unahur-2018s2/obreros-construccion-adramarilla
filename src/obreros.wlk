object uocra {
	
	var obrerosRegistrados
	
	method jornalAlbanil() {
		return 300
	}
	
	method jornalGasista() {
		return 1300
	}
	
	method jornalPlomero() {
		return 800
	}
	
	method jornalElectricista() {
		return 1000
	}
	
}

class Obrero {
	var property licencia = false
	var property jornalesAdeudados = 0
	method salirDeLicencia() { licencia = true}  // Si trabaja o no trabaja tienen en comun
	method consumo(obra) //los ladrillos estan en la obra, 
	//method tabajar() cada obrero trabaja en una obra o no
	
	//como hacer para no llamar super(obra) en todos los methodos, porque sino no contabilizo en la jornada
//Template MEthod
method jornadalaboral(obra) {
	jornalesAdeudados += 1
	self.consumirMateriales(obra)
	}
	
//Template MEthod
method sueldoPendiente(obra) {
	return jornalesAdeudados * self.sueldoPorJornal()
}
	
	
method consumirMateriales(obra)
	
}

class Albanil inherits Obrero {
	var property ladrillo
	
	override method consumo(obra) { obra.restarLadrillo(100)}
	method restarLadrillo(){ return ladrillo}
	
}

class Gasista inherits Obrero {
	var property canio
	var property fosforo
	
	override method consumo(obra) { obra.restarCanio(3) 
			obra.restarFosforo(20)
	}
	method restarCanio() { return canio}
	method restarFosforo() { return fosforo }
	
}

class Plomero inherits Obrero {
		var property canio
		var property arandela
		
	override method consumo(obra) { obra.restarCanio(10)
			obra.restarArandela(30)
	
	}
}

	


class Electricista inherits Obrero {
		var property cable
		var property cintaAisladora
	
	override method consumo() { return cable and cintaAisladora}

	
}


	
}
