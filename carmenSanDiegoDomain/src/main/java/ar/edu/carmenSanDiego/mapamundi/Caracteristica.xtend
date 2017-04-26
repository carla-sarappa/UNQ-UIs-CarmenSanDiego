package ar.edu.carmenSanDiego.mapamundi

import org.uqbar.commons.utils.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors

@TransactionalAndObservable
@Accessors

class Caracteristica {

	String nombre
	
	new (String nombre){
		this.nombre = nombre
	}
	

}
