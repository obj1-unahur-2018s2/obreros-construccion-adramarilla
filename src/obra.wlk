import uocra.*
import obreros.*

//class obra {//obreros y disponibilidad
//	var obreros = []
//	var deposito = []
//	
//	
//	method agregarObreros(obrero)
//	
//
//
//method jornalesAdeudados(){
//	return obreros.sum({ o => o.sueldoAdeudados()})
//}
//}

class Obra {
	
	var property ladrillos = 0
	var property canios = 0
	var property fosforos = 0
	var property arandelas = 0
	var property metrosCable = 0
	var property cintaAisladora = 0
	var property metrosHechosPared = 0
	var property metrosHechosCanioGas = 0
	var property metrosHechosCanioAgua = 0
	var property metrosHechosCable = 0
	var obrerosRegistrados = []
	var property efectivo = 0
	
	
	method agregarObrero(obrero) {
		obrerosRegistrados.add(obrero)
	}
	method tieneObrero(tipo){
		return obrerosRegistrados.any({obrero => obrero==tipo})
	}
	
	method obrerosActivos(){
		return obrerosRegistrados.filter({obrero => obrero.estaActivo()}) 
	}
	
	method registrarJornada(){
		self.obrerosActivos().forEach({obrero => obrero.trabajarUnDia(self)})
	}
	
	method totalAdeudado(){
		return obrerosRegistrados.sum({obrero=>obrero.cuantoCobrar()})
	}
	method pagarDeudas(){
		efectivo-=self.totalAdeudado()
		obrerosRegistrados.forEach({obrero=>obrero.diasTrabajados(0)})
	}
	
	method recibirLadrillos(cant){
		ladrillos+=cant
	}
	method recibirCanios(cant){
		canios+=cant
	}
	method recibirFosforos(cant){
		fosforos+=cant
	}
	method recibirArandelas(cant){
		arandelas+=cant
	}
	method recibirCable(cant){
		metrosCable+=cant
	}
	method recibirCinta(cant){
		cintaAisladora+=cant
	}
	
	
	method restarLadrillos(cuantos){
		ladrillos-=cuantos
	}
	method restarCanios(cuantos){
		canios-=cuantos
	}
	method restarFosforos(cuantos){
		fosforos-=cuantos
	}
	method restarArandelas(cuantos){
		arandelas-=cuantos
	}
	method restarMetrosCable(cuantos){
		metrosCable-=cuantos
	}
	method restarCintaAisladora(cuantos){
		cintaAisladora-=cuantos
	}
	
//	method levantarPared(metros){
//		metrosHechosPared+=
//	}
	
	
}