package ar.edu.carmenSanDiego

import org.uqbar.commons.utils.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@TransactionalAndObservable
@Accessors
class LugarInteres {
	String nombre
	Ocupante ocupante
	List<Pista> pistas
	
	
}

class Embajada extends LugarInteres {
	def List <Pista> damePistas(){
		return pistas
	}
	
}

class Biblioteca extends LugarInteres{
	
}

class Banco extends LugarInteres{
	
}

class Club extends LugarInteres{
	
}


