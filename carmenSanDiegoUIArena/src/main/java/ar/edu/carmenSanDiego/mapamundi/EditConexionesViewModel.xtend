package ar.edu.carmenSanDiego.mapamundi

import java.util.List
import ar.edu.carmenSanDiego.EditModelPropertyViewModel

class EditConexionesViewModel extends EditModelPropertyViewModel<Pais, Pais> {
	
	new(Pais pais) {
		super(pais)
	}
	
	override def void removerElemento(Pais conexionSeleccionada) {
		getContainer.removerConexion(conexionSeleccionada)
	}
	
	override agregarElemento(Pais nuevoElemento) {
		getContainer.addConexion(nuevoElemento)
	}
	
	def List<Pais> paises(){
		return PaisRepository.getInstance().all()
	}
	
}