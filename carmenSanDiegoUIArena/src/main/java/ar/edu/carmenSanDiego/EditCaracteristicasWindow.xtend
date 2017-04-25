 package ar.edu.carmenSanDiego

import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner

import org.uqbar.arena.widgets.Button
import org.uqbar.arena.windows.Dialog
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.layout.HorizontalLayout
import ar.edu.carmenSanDiego.widgets.GameTable
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors

class EditCaracteristicasWindow extends EditPaisPropertiesWindow<Caracteristica> {
	
	
	new(WindowOwner parent, EditCaracteristicasViewModel model) {
		super(parent, model)
	}
	
	override titulo() {
		return "Caracteristicas"
	}
	
	override elemento() {
		return "pais.caracteristicas"
		}
	
	override clazz() {
		return typeof(Caracteristica)
	}
	
	override def createAddPanel(Panel panel){
		 new TextBox(panel)	=> [
		 	width = 300
		 	bindValueToProperty("nuevoElemento")
		 ]
	}
}