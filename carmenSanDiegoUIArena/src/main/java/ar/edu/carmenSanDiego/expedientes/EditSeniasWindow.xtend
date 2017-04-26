package ar.edu.carmenSanDiego.expedientes

import org.uqbar.arena.windows.WindowOwner
import ar.edu.carmenSanDiego.EditModelPropertyWindow
import ar.edu.carmenSanDiego.expedientes.*
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class EditSeniasWindow extends EditModelPropertyWindow<Senia, Villano> {
	new(WindowOwner parent, EditSeniasViewModel model) {
		super(parent, model)
	}
	
	override titulo() {
		return "Senias Particulares"
	}
	
	override elemento() {
		return "container.seniasParticulares"
		}
	
	override clazz() {
		return typeof(Senia)
	}
	
	override def createAddPanel(Panel panel){
		 new TextBox(panel)	=> [
		 	width = 300
		 	bindValueToProperty("nuevoElemento.nombre")
		 ]
	}
}