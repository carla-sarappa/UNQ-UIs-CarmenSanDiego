package ar.edu.carmenSanDiego

import java.util.List

class EditConexionesViewModel extends EditPaisPropertiesViewModel<Pais> {
	
	new(Pais pais) {
		super(pais)
	}
	
	override def void removerElemento(Pais conexionSeleccionada) {
		pais.removerConexion(conexionSeleccionada)
	}
	
	override agregarElemento(Pais nuevoElemento) {
		pais.addConexion(nuevoElemento)
	}
	
	def List<Pais> paises(){
		return PaisRepository.getInstance().all()
	}
	
}