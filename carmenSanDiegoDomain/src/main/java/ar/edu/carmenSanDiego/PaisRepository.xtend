package ar.edu.carmenSanDiego

import org.uqbar.commons.utils.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList
import java.util.Iterator

class PaisRepository {
	static val PaisRepository instance = new PaisRepository
	List<Pais> paises = new ArrayList<Pais>()
	
	def add(Pais pais){
		paises.add(pais)
	}
	
	def List<Pais> all(){
		return paises
	}
	
	def eliminar(Pais pais){
		paises = ListasUtil.eliminar(paises, pais)
	}
	
	def editar(Pais pais){
		
	}
	
	def static PaisRepository getInstance() {
		return instance
	}
	
}