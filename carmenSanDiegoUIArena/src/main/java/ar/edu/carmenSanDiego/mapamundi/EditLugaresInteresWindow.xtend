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
import org.uqbar.arena.widgets.Selector
import org.uqbar.arena.bindings.PropertyAdapter
import ar.edu.carmenSanDiego.EditModelPropertyWindow

class EditLugaresInteresWindow extends EditModelPropertyWindow<LugarInteres, Pais> {	
	new(WindowOwner parent, EditLugaresInteresViewModel model) {
		super(parent, model)
	}
	
	override titulo() {
		return "Lugares de Interes"
	}
	
	override elemento() {
		return "container.lugaresInteres"
		}
	
	override clazz() {
		return typeof(LugarInteres)
	}
	
	override def createAddPanel(Panel panel){
		new Selector<LugarInteres>(panel)	=> [
		 	allowNull(false)
		 	width = 300
		 	bindValueToProperty("nuevoElemento")
		 	var property = bindItemsToProperty("lugaresDisponibles")
		 	property.adapter = new PropertyAdapter(typeof(LugarInteres), "nombre")
		 ]
	}
	
}