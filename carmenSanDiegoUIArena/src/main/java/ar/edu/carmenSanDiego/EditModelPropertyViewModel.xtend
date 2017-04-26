package ar.edu.carmenSanDiego


import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import org.uqbar.commons.model.ObservableUtils

@TransactionalAndObservable
@Accessors

abstract class EditModelPropertyViewModel<T, R> {
	T elementoSeleccionado
	R container
	T nuevoElemento
	
	new(R container) {
		this.container = container
	}
	
	def eliminarElementoSeleccionado(){
		removerElemento(elementoSeleccionado)
	}
	
	def agregarNuevoElemento(){
		agregarElemento(nuevoElemento)
		refresh()
	}
	
	def abstract void removerElemento(T elementoSeleccionado)
	def abstract void agregarElemento(T nuevoElemento)
	
	def refresh(){
		ObservableUtils.firePropertyChanged(this, "container", getContainer())
		
	}
	
}