package ar.edu.carmenSanDiego.mapamundi

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import org.uqbar.commons.model.ObservableUtils

@TransactionalAndObservable
@Accessors
class EditPaisViewModel {
	Pais pais
	
	new(Pais pais){
		this.pais = pais
	}
	
	def refresh() {
		ObservableUtils.firePropertyChanged(this, "pais", getPais())
	}
	
}