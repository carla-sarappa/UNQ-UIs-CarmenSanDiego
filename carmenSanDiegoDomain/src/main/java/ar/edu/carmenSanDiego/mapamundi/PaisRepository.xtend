package ar.edu.carmenSanDiego.mapamundi

import org.uqbar.commons.utils.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import java.util.ArrayList
import java.util.Iterator
import ar.edu.carmenSanDiego.ListasUtil

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
	
	def static PaisRepository getInstance() {
		return instance
	}
	
}