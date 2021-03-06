package ar.edu.carmenSanDiego.mapamundi

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
import ar.edu.carmenSanDiego.EditModelPropertyWindow

@Accessors

class EditCaracteristicasWindow extends EditModelPropertyWindow<Caracteristica, Pais> {
	new(WindowOwner parent, EditCaracteristicasViewModel model) {
		super(parent, model)
	}
	
	override titulo() {
		return "Caracteristicas"
	}
	
	override elemento() {
		return "container.caracteristicas"
		}
	
	override clazz() {
		return typeof(Caracteristica)
	}
	
	override def createAddPanel(Panel panel){
		 new TextBox(panel)	=> [
		 	width = 300
		 	bindValueToProperty("nuevoElemento.nombre")
		 ]
	}
}