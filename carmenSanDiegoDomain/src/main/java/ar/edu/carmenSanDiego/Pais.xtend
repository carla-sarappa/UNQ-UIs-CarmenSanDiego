package ar.edu.carmenSanDiego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import java.util.ArrayList

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
		ListasUtil.eliminar(caracteristicas, caracteristica)
	}	
	
	def removerConexion(Pais conexion) {
		ListasUtil.eliminar(conexiones, conexion)
	}	
	


}