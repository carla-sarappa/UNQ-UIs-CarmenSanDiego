package ar.edu.carmenSanDiego.expedientes

import org.uqbar.arena.windows.Dialog
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.Label
import ar.edu.carmenSanDiego.mapamundi.EditableList
import ar.edu.carmenSanDiego.expedientes.*

class EditVillanoWindow<T extends EditVillanoViewModel> extends Dialog<T>  {
		
	new(WindowOwner parent, T model) {
		super(parent, model)
		title = "Expedientes - Editar Villano"		
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
		new TextBox(nombrePanel).bindValueToProperty("villano.nombre")
		
		EditableList.renderizar(mainPanel, "Senias Particulares", typeof(Senia), "villano.seniasParticulares")[
			val dialog =  new EditSeniasWindow(this, new EditSeniasViewModel(modelObject.villano))
		    	dialog.onAccept [ | modelObject.refresh]
		    	dialog.open
		]

		EditableList.renderizar(mainPanel, "Hobbies", typeof(Hobby), "villano.hobbies")[
			val dialog =  new EditHobbiesWindow(this, new EditHobbiesViewModel(modelObject.villano))		    
		    	dialog.onAccept [ | modelObject.refresh]
		    	dialog.open
		]	
	}
}
