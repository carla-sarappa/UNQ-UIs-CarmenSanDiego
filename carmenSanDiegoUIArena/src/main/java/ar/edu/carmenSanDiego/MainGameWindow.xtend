package ar.edu.carmenSanDiego

import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.windows.Window
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.windows.Dialog
import ar.edu.carmenSanDiego.mapamundi.MapamundiViewModel
import ar.edu.carmenSanDiego.mapamundi.MapamundiWindow
import ar.edu.carmenSanDiego.expedientes.ExpedientesViewModel
import ar.edu.carmenSanDiego.expedientes.ExpedientesWindow
import ar.edu.carmenSanDiego.expedientes.ExpedientesEditWindow
import ar.edu.carmenSanDiego.expedientes.ExpedientesEditViewModel

class MainGameWindow extends Window<MainGameViewModel>{
	
	new(WindowOwner owner, MainGameViewModel mainGameViewModel) {
		super(owner, mainGameViewModel)
		title = "¿Donde esta Carmen Sandiego?"
	}
	
	override createContents(Panel panel){
		panel.layout = new VerticalLayout
		new Label(panel).text = "¿Que haremos ahora detective?"
		val horizontal = new Panel(panel)
		horizontal.layout = new HorizontalLayout
		
		new Button(horizontal) => [
		    caption = "Resolver Misterio"
		    setAsDefault
		    onClick [  |  ]
		]
		
		new Button(horizontal) => [
		    caption = "Mapamundi"
		    setAsDefault
		    onClick [  | this.abrirMapamundi() ]
		]
		
		new Button(horizontal) => [
		    caption = "Expedientes"
		    setAsDefault
		    onClick [  | this.abrirExpedientes() ]
		]
	}
	
	def openWindow(Window<?> window) {
		window.open
	}	

	def void abrirMapamundi() {
		this.openWindow(new MapamundiWindow(this, new MapamundiViewModel()))
	}
	
	def void abrirExpedientes() {
		this.openWindow(new ExpedientesEditWindow(this, new ExpedientesEditViewModel()))
	}
}