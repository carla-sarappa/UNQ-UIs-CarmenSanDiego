package ar.edu.carmenSanDiego.expedientes

import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.bindings.NotNullObservable
import org.uqbar.arena.windows.Dialog

class ExpedientesEditWindow extends ExpedientesWindow<ExpedientesEditViewModel>{
	
	new(WindowOwner owner, ExpedientesEditViewModel expedientesEditViewModel) {
		super(owner, expedientesEditViewModel)
	}
	
	override crearBotones(Panel panel){
    	val elementSelected = new NotNullObservable("villanoSeleccionado")
    	
    	new Button(panel) => [
		    caption = "Editar"
		    setAsDefault
		    onClick [ | this.abrirEditarVillano()]
		    bindEnabled(elementSelected)
		]
				 
		new Button(panel) => [
		    caption = "Nuevo"
		    setAsDefault
		    onClick [ | this.crearVillano() ]   
		]
	}
	
	def openDialog(Dialog<?> dialog) {
			dialog.open
	}
	
	def void abrirEditarVillano() {
		this.openDialog(new EditVillanoWindow(this, new EditVillanoViewModel(modelObject.villanoSeleccionado)))
	}
	
	def void crearVillano(){
		val dialog = new NuevoVillanoWindow(this, new NuevoVillanoViewModel())
		dialog.onAccept[ | modelObject.refresh]
		dialog.open
	}
	
	
}