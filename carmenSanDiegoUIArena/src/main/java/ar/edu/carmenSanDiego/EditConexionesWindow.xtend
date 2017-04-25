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

class EditConexionesWindow extends EditPaisPropertiesWindow<Pais> {	
	new(WindowOwner parent, EditConexionesViewModel model) {
		super(parent, model)
	}
	
	override titulo() {
		return "Conexiones"
	}
	
	override elemento() {
		return "pais.conexiones"
		}
	
	override clazz() {
		return typeof(Pais)
	}
	
}