package ar.edu.carmenSanDiego.expedientes

import org.uqbar.commons.utils.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors
import ar.edu.carmenSanDiego.expedientes.*
import java.util.List
import org.uqbar.commons.model.ObservableUtils

@TransactionalAndObservable
@Accessors

class ExpedientesViewModel {
	Villano villanoSeleccionado
	
	def List<Villano> getVillanos(){
		return ExpedienteRepository.getInstance().all()
	}	
	
	def refresh(){
		ObservableUtils.firePropertyChanged(this, "villanos", getVillanos())
		
	}
	
}
