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

abstract class EditPaisPropertiesWindow<T> extends Dialog<EditPaisPropertiesViewModel<T>> {
	def abstract String titulo()
    def abstract String elemento()
    def abstract Class<T> clazz()
    
	
	new(WindowOwner parent, EditPaisPropertiesViewModel<T> model) {
		super(parent, model)
		title = "Editar " + titulo()		
	}
	
	override protected addActions(Panel actionsPanel) {
		new Button(actionsPanel) => [
		    caption = "Aceptar"
		    setAsDefault
		    onClick [ | this.accept ]
		 ]	
	}
	
	override protected createFormPanel(Panel mainPanel) {
		GameTable.crear(mainPanel, clazz()) => [
			bindValueToProperty("elementoSeleccionado") 
			
    		tituloTabla = titulo()
    		atributo = elemento()
    		bind()	
    	]
    	
    	var horizontalPanel1 = new Panel(mainPanel)
    	horizontalPanel1.layout = new HorizontalLayout
    	
    	new Button(horizontalPanel1) => [
		    caption = "Eliminar"
		    setAsDefault
		    onClick [  | modelObject.eliminarElementoSeleccionado() ]
		 ]
		 
		 var horizontalPanel2 = new Panel(mainPanel)
		 horizontalPanel2.layout = new HorizontalLayout
		 createAddPanel(horizontalPanel2)
		 
		 new Button(horizontalPanel2) => [
		    caption = "Agregar"
		    setAsDefault
		    onClick [ | modelObject.agregarNuevoElemento() ]
		 ]
	}
	
	def createAddPanel(Panel panel){
	
	}
	
}