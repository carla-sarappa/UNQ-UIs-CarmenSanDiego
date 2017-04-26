package ar.edu.carmenSanDiego.expedientes

import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.ArrayList
import java.util.List
import ar.edu.carmenSanDiego.ListasUtil
import ar.edu.carmenSanDiego.Villano
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
@TransactionalAndObservable
class ExpedienteRepository {
	
	static val ExpedienteRepository instance = new ExpedienteRepository
	
	List<Villano> expedientes = new ArrayList<Villano>()
	
	def add(Villano villano){
		expedientes.add(villano)
		return this
	}
	
	def List<Villano> all(){
		return expedientes
	}
	
	def eliminar(Villano expediente){
		expedientes = ListasUtil.eliminar(expedientes, expediente)
	}
	
	def static ExpedienteRepository getInstance() {
		return instance
	}
	
}