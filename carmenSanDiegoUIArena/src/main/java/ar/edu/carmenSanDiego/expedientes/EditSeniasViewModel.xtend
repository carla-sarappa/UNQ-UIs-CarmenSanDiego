package ar.edu.carmenSanDiego.expedientes

import ar.edu.carmenSanDiego.EditModelPropertyViewModel
import ar.edu.carmenSanDiego.expedientes.*

class EditSeniasViewModel extends EditModelPropertyViewModel<Senia, Villano> {
	
	new(Villano villano) {
		super(villano)
		this.nuevoElemento = new Senia("")
	}
	
	override def void removerElemento(Senia seniaSeleccionada) {
		getContainer.removerSenia(seniaSeleccionada)
	}
	
	override def void agregarElemento(Senia senia){
		getContainer.addSenia(senia)
		nuevoElemento = new Senia("")

	}
}