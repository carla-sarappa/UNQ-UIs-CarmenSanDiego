package ar.edu.carmenSanDiego.expedientes

import org.uqbar.commons.model.ObservableUtils
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@Accessors
class ExpedientesEditViewModel extends ExpedientesViewModel{
	
	override List<Villano> getVillanos(){
		return ExpedienteRepository.getInstance().all()
	}	
	
	override refresh(){
		ObservableUtils.firePropertyChanged(this, "villanos", getVillanos())
		
	}
}