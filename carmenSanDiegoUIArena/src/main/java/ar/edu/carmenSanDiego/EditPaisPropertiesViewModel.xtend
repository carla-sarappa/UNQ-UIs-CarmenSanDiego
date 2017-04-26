package ar.edu.carmenSanDiego


import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import org.uqbar.commons.model.ObservableUtils

@TransactionalAndObservable
@Accessors

abstract class EditPaisPropertiesViewModel<T> {
	T elementoSeleccionado
	Pais pais
	T nuevoElemento
	
	new(Pais pais) {
		this.pais = pais
	}
	
	def eliminarElementoSeleccionado(){
		removerElemento(elementoSeleccionado)
		ObservableUtils.firePropertyChanged(this, "pais", getPais())
	}
	
	def agregarNuevoElemento(){
		agregarElemento(nuevoElemento)
		ObservableUtils.firePropertyChanged(this, "pais", getPais())
	}
	
	def abstract void removerElemento(T elementoSeleccionado)
	def abstract void agregarElemento(T nuevoElemento)
	
}