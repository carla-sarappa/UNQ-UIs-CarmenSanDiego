package ar.edu.carmenSanDiego.mapamundi
import java.util.List
import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors
import ar.edu.carmenSanDiego.EditModelPropertyViewModel

@Accessors
class EditLugaresInteresViewModel extends EditModelPropertyViewModel<LugarInteres, Pais> {
	List<LugarInteres> lugaresDisponibles = new ArrayList<LugarInteres>()
	
	new(Pais pais) {
		super(pais)
		populateLugares()	
	}
	
	override def void removerElemento(LugarInteres lugarSeleccionado) {
		getContainer.removerLugarInteres(lugarSeleccionado)
	}
	
	override agregarElemento(LugarInteres nuevoElemento) {
		getContainer.addLugarInteres(nuevoElemento)
		populateLugares()
	}
	
	def populateLugares(){
		lugaresDisponibles = new ArrayList<LugarInteres>()
		lugaresDisponibles.add(new Embajada("Embajada"))
		lugaresDisponibles.add(new Biblioteca("Biblioteca"))
		lugaresDisponibles.add(new Banco("Banco"))
		lugaresDisponibles.add(new Club("Club"))
	}
	
}