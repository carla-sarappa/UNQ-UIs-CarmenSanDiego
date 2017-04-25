package ar.edu.carmenSanDiego
import org.uqbar.arena.Application

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
		new MapamundiWindow(this, new MapamundiViewModel)
	}
	
	def static main(String[] args) {
		new CarmenSanDiegoApplication().start
	}
}
