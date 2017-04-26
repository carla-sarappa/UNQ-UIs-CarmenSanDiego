package ar.edu.carmenSanDiego.expedientes

import org.uqbar.arena.windows.WindowOwner
import org.eclipse.xtend.lib.annotations.Accessors
import ar.edu.carmenSanDiego.EditModelPropertyWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox

@Accessors
class EditHobbiesWindow extends EditModelPropertyWindow<Hobby, Villano> {
	new(WindowOwner parent, EditHobbiesViewModel model) {
		super(parent, model)
	}
	
	override titulo() {
		return "Hobbies"
	}
	
	override elemento() {
		return "container.hobbies"
		}
	
	override clazz() {
		return typeof(Hobby)
	}
	
	override def createAddPanel(Panel panel){
		 new TextBox(panel)	=> [
		 	width = 300
		 	bindValueToProperty("nuevoElemento.nombre")
		 ]
	}
}