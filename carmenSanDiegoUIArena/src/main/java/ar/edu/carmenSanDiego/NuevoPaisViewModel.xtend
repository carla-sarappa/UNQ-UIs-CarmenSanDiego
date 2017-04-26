package ar.edu.carmenSanDiego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import org.uqbar.commons.model.ObservableUtils

@TransactionalAndObservable
@Accessors
class NuevoPaisViewModel extends EditPaisViewModel {
	
	new(){
		super(new Pais(""))
	}
	
	def guardar(){
		PaisRepository.getInstance().add(pais)

	}

}	