package ar.edu.carmenSanDiego.mapamundi

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import org.uqbar.commons.model.ObservableUtils

@TransactionalAndObservable
@Accessors
class MapamundiViewModel {
	Pais paisSeleccionado
	
	def List<Pais> getPaises(){
		return PaisRepository.getInstance().all()
	}
	
	def eliminarPais(){
		PaisRepository.getInstance().eliminar(paisSeleccionado)
		refresh()		
	}
	
	def refresh(){
		ObservableUtils.firePropertyChanged(this, "paises", getPaises())
		
	}
	
}
