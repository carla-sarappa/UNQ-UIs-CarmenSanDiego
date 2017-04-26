package ar.edu.carmenSanDiego
import java.util.List
import java.util.ArrayList
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class EditLugaresInteresViewModel extends EditPaisPropertiesViewModel<LugarInteres> {
	List<LugarInteres> lugaresDisponibles = new ArrayList<LugarInteres>()
	
	new(Pais pais) {
		super(pais)
		populateLugares()	
	}
	
	override def void removerElemento(LugarInteres lugarSeleccionado) {
		pais.removerLugarInteres(lugarSeleccionado)
	}
	
	override agregarElemento(LugarInteres nuevoElemento) {
		pais.addLugarInteres(nuevoElemento)
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