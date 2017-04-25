package ar.edu.carmenSanDiego

class EditCaracteristicasViewModel extends EditPaisPropertiesViewModel<Caracteristica> {
	
	new(Pais pais) {
		super(pais)
	}
	
	override def void removerElemento(Caracteristica caracteristicaSeleccionada) {
		pais.removerCaracteristica(caracteristicaSeleccionada)
	}
	
	override def void agregarElemento(String descripcion){
		
		pais.addCaracteristica(new Caracteristica(descripcion))
	}
}