package ar.edu.carmenSanDiego

class EditConexionesViewModel extends EditPaisPropertiesViewModel<Pais> {
	
	new(Pais pais) {
		super(pais)
	}
	
	override def void removerElemento(Pais conexionSeleccionada) {
		pais.removerConexion(conexionSeleccionada)
	}
	
	override agregarElemento(String nuevoElemento) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
}