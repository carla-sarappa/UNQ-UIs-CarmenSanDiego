package ar.edu.carmenSanDiego

import static org.junit.Assert.*
import static org.hamcrest.CoreMatchers.*
import org.junit.Test
import java.util.List
import java.util.ArrayList

class LugaresInteresTest {
	
	@Test
	def embajadaTestito(){
//		cuando tiene información del malechor da 2 pistas relacionadas con el destino del villano
		val embajada = new Embajada()
		val pista1 = new Pista("destino", "se fue a Argentina")
		val pista2 = new Pista("destino", "se fue a Uruguay")
		val pista3 = new Pista("destino", "se fue a Uruguay")
		val pistasPrueba = new ArrayList<Pista>()
		pistasPrueba.add(pista1)
		pistasPrueba.add(pista2)
		embajada.setPistas(pistasPrueba)
		
		val pistas = embajada.damePistas()
		
		assertThat(pistas, hasItems(pista1, pista3))	
		
	}
	
}