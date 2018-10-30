object uocra{
	method jornalAlbanil(){
		return 2000
	}
	method jornalEspecBanioYCocina(){
		return 3000
	}
	method jornalElectricista(){
		return 3500
	}
	
}

class Obrero {

//class Obrero {
//	var property licencia = false
//	
//	method salirDeLicencia() { licencia = true}  // Si trabaja o no trabaja tienen en comun
//	method consumo(obra) //los materiales estan en la obra, 
//	//method trabajar() cada obrero trabaja en una obra o no
//	
//}
	var property estaActivo
	var property diasTrabajados = 0
	
	method consumir(obra)
	method aporta(obra)
	
	method trabajarUnDia(obra){
		self.consumir(obra)
		self.sumarDiaDeTrabajo()
	}
	
	method sumarDiaDeTrabajo(){
		diasTrabajados+=1
	}
	method cuantoCobrar()
}

//class Albanil inherits Obrero {
//	var property ladrillo
//	
//	override method consumo(obra) { obra.restarLadrillo(100)}
//	method restarLadrillo(){ return ladrillo}
//	
//}

class Albanil inherits Obrero{
	override method consumir(obra){
		obra.restarLadrillos(100)
	}
	override method aporta(obra){
		obra.levantarPared(3)
	}
	override method cuantoCobrar(){
		return uocra.jornalAlbanil()*diasTrabajados
	}
}

//class Gasista inherits Obrero {
//	var property canio
//	var property fosforo
//	
//	override method consumo(obra) { obra.restarCanio(3) 
//			obra.restarFosforo(20)
//	}
//	method restarCanio() { return canio}
//	method restarFosforo() { return fosforo }
//	
//}
class Gasista inherits Obrero{
	override method consumir(obra){
		obra.restarCanios(3)
		obra.restarFosforos(20)
	}
	override method aporta(obra){
		obra.colocarCaniosGas(3)	
	}
	override method cuantoCobrar(){
		return uocra.jornalEspecBanioYCocina()*diasTrabajados
	}
}

//class Plomero inherits Obrero {
//		var property canio
//		var property arandela
//		
//	override method consumo(obra) { obra.restarCanio(10)
//			obra.restarArandela(30)
//	
//	}
//}
class Plomero inherits Obrero{
	override method consumir(obra){
		obra.restarCanios(10)
		obra.restarArandelas(30)
	}
	override method aporta(obra){
		obra.colocarCaniosAgua(9)	
	}
	override method cuantoCobrar(){
		return uocra.jornalEspecBanioYCocina()*diasTrabajados
	}
}

//class Electricista inherits Obrero {
//		var property cable
//		var property cintaAisladora
//	
//	override method consumo() { return cable and cintaAisladora}	
//}
class Electricista inherits Obrero{
	override method consumir(obra){
		obra.restarMetrosCable(4)
		obra.restarCintaAisladora(1)
	}
	override method aporta(obra){
		obra.colocarMetrosCable(4)	
	}
	override method cuantoCobrar(){
		return uocra.jornalElectricista()*diasTrabajados
	}
}


