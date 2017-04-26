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
import org.uqbar.lacar.ui.model.Action

class EditPaisWindow<T extends EditPaisViewModel> extends Dialog<T> {
	
		
	new(WindowOwner parent, T model) {
		super(parent, model)
		title = "Mapamundi - Editar Pais"		
	}
	
	override protected addActions(Panel actionsPanel) {
		new Button(actionsPanel) => [
		    caption = "Aceptar"
		    setAsDefault
		    onClick [ | this.beforeAccept
		    			this.accept
		    ]
		 ]	
	}
	
	def beforeAccept(){
		
	}
	
	override protected createFormPanel(Panel mainPanel) {
    	var nombrePanel = new Panel(mainPanel)
    	nombrePanel.layout = new HorizontalLayout
		new Label(nombrePanel).text = "Nombre: "	
		new TextBox(nombrePanel).bindValueToProperty("pais.nombre")
		
		EditableList.renderizar(mainPanel, "Caracteristicas", typeof(Caracteristica), "pais.caracteristicas")[
			val dialog =  new EditCaracteristicasWindow(this, new EditCaracteristicasViewModel(modelObject.pais))
		    	dialog.onAccept [ | modelObject.refresh]
		    	dialog.open
		]

		EditableList.renderizar(mainPanel, "Conexiones", typeof(Pais), "pais.conexiones")[
			val dialog =  new EditConexionesWindow(this, new EditConexionesViewModel(modelObject.pais))		    
		    	dialog.onAccept [ | modelObject.refresh]
		    	dialog.open
		]
		

		EditableList.renderizar(mainPanel, "Lugares de interes", typeof(Pais), "pais.lugaresInteres")[
			val dialog =  new EditLugaresInteresWindow(this, new EditLugaresInteresViewModel(modelObject.pais))		    
		    	dialog.onAccept [ | modelObject.refresh]
		    	dialog.open
		]
		
	}
	
}

class EditableList {
	def static void renderizar(Panel mainPanel, String nombrePanel, Class clazz, String tableAttr, Action action){
		
		var panel = new Panel(mainPanel)
		panel.layout = new HorizontalLayout
		new Label(panel).text = nombrePanel
		new Button(panel) => [
		    caption = "Editar " + nombrePanel
		    setAsDefault
		    onClick(action)
		]
		
		GameTable.crear(mainPanel, clazz) => [
    		tituloTabla = nombrePanel
    		atributo = tableAttr
    		bind()	
    	]
		
	}

}