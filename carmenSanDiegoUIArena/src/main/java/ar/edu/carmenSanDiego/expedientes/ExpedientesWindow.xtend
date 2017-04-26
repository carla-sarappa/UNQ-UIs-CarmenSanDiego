package ar.edu.carmenSanDiego.expedientes

import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner
import org.uqbar.arena.windows.Window
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.layout.HorizontalLayout
import ar.edu.carmenSanDiego.widgets.GameTable
import ar.edu.carmenSanDiego.Villano
import ar.edu.carmenSanDiego.Senia
import ar.edu.carmenSanDiego.Hobby

class ExpedientesWindow extends Window<ExpedientesViewModel> {
	
	new(WindowOwner owner, ExpedientesViewModel expedientesViewModel) {
		super(owner, expedientesViewModel)
		title = "Expedientes"
	}
	
	override createContents(Panel horizontalPanel) {

    	horizontalPanel.layout = new HorizontalLayout
    	var listPanel = new Panel(horizontalPanel)
    	listPanel.layout = new VerticalLayout
    	    	
    	GameTable.crear(listPanel, typeof(Villano)) => [
    		bindValueToProperty("villanoSeleccionado") 
    		tituloTabla = "Villano"
    		atributo = "villanos"  
    		bind()		
    	]
    	
    	var actionsPanel = new Panel(listPanel)
    	actionsPanel.layout = new VerticalLayout
    	
		var detallePanel = new Panel(horizontalPanel)
		detallePanel.layout = new VerticalLayout
		
		var nombrePanel = new Panel(detallePanel)
		nombrePanel.layout = new HorizontalLayout
		
		new Label(nombrePanel).text = "Nombre: "		
		var nombre = new Label(nombrePanel).bindValueToProperty("villanoSeleccionado.nombre")
		
		var sexoPanel = new Panel(detallePanel)
		sexoPanel.layout = new HorizontalLayout
		
		new Label(sexoPanel).text = "Sexo: "		
		var sexo = new Label(sexoPanel).bindValueToProperty("villanoSeleccionado.sexo")
		
		GameTable.crear(detallePanel, typeof(Senia)) => [
    		tituloTabla = "Senia"
    		tituloSeccion = "Senias particulares"
    		atributo = "villanoSeleccionado.seniasParticulares"
    		bind()		
    	]
    	
    	GameTable.crear(detallePanel, typeof(Hobby)) => [
    		tituloTabla = "Hobby"
    		tituloSeccion = "Hobbies"
    		atributo = "villanoSeleccionado.hobbies"  	
    		bind()	
    	]	
	}
	
	def crearBotones(){}
}

