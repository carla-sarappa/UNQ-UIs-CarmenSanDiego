package ar.edu.carmenSanDiego

import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.windows.Window
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.layout.HorizontalLayout
import ar.edu.carmenSanDiego.widgets.GameTable
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.bindings.NotNullObservable
import org.uqbar.arena.windows.Dialog


class MapamundiWindow extends Window<MapamundiViewModel> {
	
	new(WindowOwner owner, MapamundiViewModel paisesViewModel) {
		super(owner, paisesViewModel)
		title = "Mapamundi"
	}
	
	override createContents(Panel horizontalPanel) {

    	horizontalPanel.layout = new HorizontalLayout
    	var listPanel = new Panel(horizontalPanel)
    	listPanel.layout = new VerticalLayout
    	    	
    	GameTable.crear(listPanel, typeof(Pais)) => [
    		bindValueToProperty("paisSeleccionado") 
    		tituloTabla = "Pais"
    		atributo = "paises"  
    		bind()		
    	]
    	
    	var actionsPanel = new Panel(listPanel)
    	actionsPanel.layout = new VerticalLayout
    	
    	val elementSelected = new NotNullObservable("paisSeleccionado")
    	
    	new Button(actionsPanel) => [
		    caption = "Eliminar"
		    setAsDefault
		    onClick [  | modelObject.eliminarPais() ]
		    bindEnabled(elementSelected)
		    
		 ]
		 
		new Button(actionsPanel) => [
		    caption = "Editar"
		    setAsDefault
		    onClick [ | this.editarPais()]
		    bindEnabled(elementSelected)
		    
		]
				 
		new Button(actionsPanel) => [
		    caption = "Nuevo"
		    setAsDefault
		    onClick [ | modelObject.nuevoPais() ]
		    
		]
    	
		var detallePanel = new Panel(horizontalPanel)
		detallePanel.layout = new VerticalLayout
		
		var nombrePanel = new Panel(detallePanel)
		nombrePanel.layout = new HorizontalLayout
		
		new Label(nombrePanel).text = "Nombre: "		
		var nombre = new Label(nombrePanel).bindValueToProperty("paisSeleccionado.nombre")
		
		GameTable.crear(detallePanel, typeof(Caracteristica)) => [
    		tituloTabla = "Caracteristicas"
    		tituloSeccion = "Caracteristicas"
    		atributo = "paisSeleccionado.caracteristicas"
    		bind()		
    	]
    	
    	GameTable.crear(detallePanel, typeof(Pais)) => [
    		tituloTabla = "Conexiones"
    		tituloSeccion = "Conexiones"
    		atributo = "paisSeleccionado.conexiones"  	
    		bind()	
    	]
    	
    	GameTable.crear(detallePanel, typeof(LugarInteres)) => [
    		tituloTabla = "Lugares de interes"
    		tituloSeccion = "Lugares de interes"
    		atributo = "paisSeleccionado.lugaresInteres" 
    		bind() 		
    	]
		
	}
	
	def openDialog(Dialog<?> dialog) {
			dialog.open
		}
		

	def void editarPais() {
		this.openDialog(new EditPaisWindow(this, new EditPaisViewModel(modelObject.paisSeleccionado)))
	}
	
}

