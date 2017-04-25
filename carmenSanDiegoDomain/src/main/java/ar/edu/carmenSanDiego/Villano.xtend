package ar.edu.carmenSanDiego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List

@TransactionalAndObservable
@Accessors
class Villano extends Ocupante{
	String nombre
	String sexo
	List<String> seniasParticulares
	List<String> hobbies
	
}
	
	
