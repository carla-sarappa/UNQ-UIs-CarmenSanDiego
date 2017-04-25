package ar.edu.carmenSanDiego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import org.uqbar.commons.model.ObservableUtils

@TransactionalAndObservable
@Accessors
class MapamundiViewModel {
	String saludo = "Hola Mundo"
	Pais paisSeleccionado
	
	def List<Pais> getPaises(){
		return PaisRepository.getInstance().all()
	}
	
	def eliminarPais(){
		PaisRepository.getInstance().eliminar(paisSeleccionado)
		ObservableUtils.firePropertyChanged(this, "paises", getPaises())
		
	}
	
	def editarPais(){
		PaisRepository.getInstance().editar(paisSeleccionado)
		ObservableUtils.firePropertyChanged(this, "paises", getPaises())
	}
	
	def nuevoPais(){
		
	}
	
}
