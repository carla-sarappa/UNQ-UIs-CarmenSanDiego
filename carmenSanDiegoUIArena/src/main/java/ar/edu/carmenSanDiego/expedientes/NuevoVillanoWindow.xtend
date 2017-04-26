package ar.edu.carmenSanDiego.expedientes

import org.uqbar.arena.windows.WindowOwner

class NuevoVillanoWindow extends EditVillanoWindow<NuevoVillanoViewModel> {
	
	new(WindowOwner parent, NuevoVillanoViewModel model) {
		super(parent, model)
		title = "Expedientes - Nuevo Villano"		
	}
		
	override def beforeAccept(){
		modelObject.guardar()
	}	
}