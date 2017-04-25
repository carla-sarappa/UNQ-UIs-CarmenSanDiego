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

class EditPaisWindow extends Dialog<EditPaisViewModel> {
	
		
	new(WindowOwner parent, EditPaisViewModel model) {
		super(parent, model)
		title = "Mapamundi - Editar Pais"		
	}
	
	override protected addActions(Panel actionsPanel) {
		new Button(actionsPanel) => [
		    caption = "Aceptar"
		    setAsDefault
		    onClick [ | this.close ]
		 ]	
	}
	
	override protected createFormPanel(Panel mainPanel) {
    	var nombrePanel = new Panel(mainPanel)
    	nombrePanel.layout = new HorizontalLayout
		new Label(nombrePanel).text = "Nombre: "	
		new TextBox(nombrePanel).bindValueToProperty("pais.nombre")
		
		var caracteristicasPanel = new Panel(mainPanel)
		caracteristicasPanel.layout = new HorizontalLayout
		new Label(caracteristicasPanel).text = "Caracteristicas"
		new Button(caracteristicasPanel) => [
		    caption = "Editar caracteristicas"
		    setAsDefault
		    val dialog =  new EditCaracteristicasWindow(this, new EditCaracteristicasViewModel(modelObject.pais))
		    onClick [  | dialog.onAccept [ | modelObject.refresh]
		    			dialog.open
		    ]
		 ]	
		 
		 
		 GameTable.crear(mainPanel, typeof(Caracteristica)) => [
    		tituloTabla = "Caracteristicas"
    		atributo = "pais.caracteristicas"
    		bind()	
    	]
    	
    	var conexionesPanel = new Panel(mainPanel)
		conexionesPanel.layout = new HorizontalLayout
		new Label(conexionesPanel).text = "Conexiones"
		new Button(conexionesPanel) => [
		    caption = "Editar conexiones"
		    setAsDefault
		    val dialog =  new EditConexionesWindow(this, new EditConexionesViewModel(modelObject.pais))
		    onClick [  | dialog.onAccept [ | modelObject.refresh]
		    			dialog.open]
		 ]	
		 
		 GameTable.crear(mainPanel, typeof(Pais)) => [
    		tituloTabla = "Conexiones"
    		atributo = "pais.conexiones"
    		bind()	
    	]
    	
    	var lugarInteresPanel = new Panel(mainPanel)
		lugarInteresPanel.layout = new HorizontalLayout
		new Label(lugarInteresPanel).text = "Lugares de interes"
		new Button(lugarInteresPanel) => [
		    caption = "Editar lugares"
		    setAsDefault
		    onClick [  | ]
		 ]	
		 
		 GameTable.crear(mainPanel, typeof(LugarInteres)) => [
    		tituloTabla = "Lugares de Interes"
    		atributo = "pais.lugaresInteres"
    		bind()	
    	]
	}
	
}