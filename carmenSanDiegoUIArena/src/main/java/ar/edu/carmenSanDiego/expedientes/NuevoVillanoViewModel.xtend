package ar.edu.carmenSanDiego.expedientes

import ar.edu.carmenSanDiego.expedientes.Villano

class NuevoVillanoViewModel extends EditVillanoViewModel {
	
	new(){
		super(new Villano("", ""))
	}
	
	def guardar(){
		System.out.println(villano)
		ExpedienteRepository.getInstance().add(villano)
	}
}