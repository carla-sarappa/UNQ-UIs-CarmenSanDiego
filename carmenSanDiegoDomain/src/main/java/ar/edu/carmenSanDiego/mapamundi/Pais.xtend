package ar.edu.carmenSanDiego.mapamundi

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import java.util.ArrayList
import ar.edu.carmenSanDiego.ListasUtil

@TransactionalAndObservable
@Accessors
class Pais {
	String nombre
	List<Caracteristica> caracteristicas = new ArrayList<Caracteristica>()
	List<LugarInteres> lugaresInteres = new ArrayList<LugarInteres>()
	List<Pais> conexiones = new ArrayList<Pais>()
	
	new (String nombre){
		this.nombre = nombre
	}
	
	def Pais addCaracteristica(Caracteristica c){
		caracteristicas.add(c)
		return this
	}
	
	def Pais addConexion(Pais conectado){
		conexiones.add(conectado)
		return this
	}
	
	def Pais addLugarInteres(LugarInteres lugar){
		lugaresInteres.add(lugar)
		return this
	}
	
	def removerCaracteristica(Caracteristica caracteristica) {
		caracteristicas = ListasUtil.eliminar(caracteristicas, caracteristica)
	}	
	
	def removerConexion(Pais conexion) {
		conexiones = ListasUtil.eliminar(conexiones, conexion)
	}	
	
	def removerLugarInteres(LugarInteres lugar) {
		lugaresInteres = ListasUtil.eliminar(lugaresInteres, lugar)
	}	
}