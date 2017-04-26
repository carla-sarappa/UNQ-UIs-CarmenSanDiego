package ar.edu.carmenSanDiego

import ar.edu.carmenSanDiego.mapamundi.*
import org.uqbar.arena.Application
import ar.edu.carmenSanDiego.expedientes.ExpedienteRepository
import ar.edu.carmenSanDiego.expedientes.ExpedientesViewModel
import ar.edu.carmenSanDiego.expedientes.ExpedientesWindow

class CarmenSanDiegoApplication extends Application {
	
	override createMainWindow() {
		PaisRepository.getInstance().add(new Pais("Argentina")
			.addCaracteristica(new Caracteristica("Es un pais de mierda"))
			.addCaracteristica(new Caracteristica("Es un pais de mierda"))
			.addCaracteristica(new Caracteristica("Es un pais de mierda"))
			.addCaracteristica(new Caracteristica("Es un pais de mierda"))
			.addCaracteristica(new Caracteristica("Es un pais de mierda"))
			.addCaracteristica(new Caracteristica("Es un pais de mierda")).addConexion(new Pais("Chile")
			)
		)
		PaisRepository.getInstance().add(new Pais("Sarasa"))
		PaisRepository.getInstance().add(new Pais("Caca"))
		PaisRepository.getInstance().add(new Pais("Pindonga"))
		PaisRepository.getInstance().add(new Pais("Sarasa2"))
		
		ExpedienteRepository.getInstance().add(
			new Villano("Carmen Sandiego", "femenino")
			.addSenia(new Senia("pelo negro"))
			.addHobby(new Hobby("robar items"))
		)
	
		//new MapamundiWindow(this, new MapamundiViewModel)
		new ExpedientesWindow(this, new ExpedientesViewModel)
	}
	
	def static main(String[] args) {
		new CarmenSanDiegoApplication().start
	}
}
