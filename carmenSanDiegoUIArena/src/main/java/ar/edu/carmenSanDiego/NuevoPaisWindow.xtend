package ar.edu.carmenSanDiego

import org.uqbar.arena.windows.WindowOwner

class NuevoPaisWindow extends EditPaisWindow<NuevoPaisViewModel> {
	
	new(WindowOwner parent, NuevoPaisViewModel model) {
		super(parent, model)
		title = "Mapamundi - Nuevo Pais"		
		
	}
	
	override def beforeAccept(){
		modelObject.guardar()
	
	}
	
	
	
}