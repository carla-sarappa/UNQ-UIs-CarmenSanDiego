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

class EditConexionesWindow extends EditModelPropertyWindow<Pais, Pais> {	
	new(WindowOwner parent, EditConexionesViewModel model) {
		super(parent, model)
	}
	
	override titulo() {
		return "Conexiones"
	}
	
	override elemento() {
		return "container.conexiones"
		}
	
	override clazz() {
		return typeof(Pais)
	}
	
	override def createAddPanel(Panel panel){
		new Selector<Pais>(panel)	=> [
		 	allowNull(false)
		 	width = 300
		 	bindValueToProperty("nuevoElemento")
		 	var property = bindItemsToProperty("paises")
		 	property.adapter = new PropertyAdapter(typeof(Pais), "nombre")
		 ]
	}
	
}