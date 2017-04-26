package ar.edu.carmenSanDiego.expedientes

import ar.edu.carmenSanDiego.EditModelPropertyViewModel

class EditHobbiesViewModel extends EditModelPropertyViewModel<Hobby, Villano> {
	
	new(Villano villano) {
		super(villano)
		this.nuevoElemento = new Hobby("")
	}
	
	override def void removerElemento(Hobby hobbySeleccionado) {
		getContainer.removerHobby(hobbySeleccionado)
	}
	
	override def void agregarElemento(Hobby hobby){
		getContainer.addHobby(hobby)
		nuevoElemento = new Hobby("")
	}
	
}