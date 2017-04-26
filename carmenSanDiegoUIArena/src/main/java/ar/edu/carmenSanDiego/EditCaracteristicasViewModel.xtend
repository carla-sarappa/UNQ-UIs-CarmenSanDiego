package ar.edu.carmenSanDiego

class EditCaracteristicasViewModel extends EditPaisPropertiesViewModel<Caracteristica> {
	
	new(Pais pais) {
		super(pais)
		this.nuevoElemento = new Caracteristica("")
	}
	
	override def void removerElemento(Caracteristica caracteristicaSeleccionada) {
		pais.removerCaracteristica(caracteristicaSeleccionada)
	}
	
	override def void agregarElemento(Caracteristica caracteristica){
		
		pais.addCaracteristica(caracteristica)
		nuevoElemento = new Caracteristica("")

	}
}