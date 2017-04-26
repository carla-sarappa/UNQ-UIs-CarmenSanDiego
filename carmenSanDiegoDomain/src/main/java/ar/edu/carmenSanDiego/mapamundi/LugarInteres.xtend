package ar.edu.carmenSanDiego.mapamundi

import org.uqbar.commons.utils.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List
import ar.edu.carmenSanDiego.Ocupante
import ar.edu.carmenSanDiego.Pista

@TransactionalAndObservable
@Accessors
class LugarInteres {
	String nombre
	Ocupante ocupante
	List<Pista> pistas
	
		
	new (String nombre){
		this.nombre = nombre
	}
}

class Embajada extends LugarInteres {
	
	new(String nombre) {
		super(nombre)
	}
	
	def List <Pista> damePistas(){
		return pistas
	}
	
}

class Biblioteca extends LugarInteres{
		
	new(String nombre) {
		super(nombre)
	}
	
}

class Banco extends LugarInteres{
		
	new(String nombre) {
		super(nombre)
	}
	
	
}

class Club extends LugarInteres{
		
	new(String nombre) {
		super(nombre)
	}
	
	
}


