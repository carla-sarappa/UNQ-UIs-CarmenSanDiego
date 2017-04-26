package ar.edu.carmenSanDiego.expedientes

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import org.uqbar.commons.model.ObservableUtils
import ar.edu.carmenSanDiego.expedientes.*

@TransactionalAndObservable
@Accessors
class EditVillanoViewModel {
	Villano villano
	
	new(Villano villano){
		this.villano = villano
	}
	
	def refresh() {
		ObservableUtils.firePropertyChanged(this, "villano", getVillano())
	}
}