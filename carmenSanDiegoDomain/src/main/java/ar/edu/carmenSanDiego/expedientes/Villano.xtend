package ar.edu.carmenSanDiego.expedientes

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import java.util.List
import java.util.ArrayList
import ar.edu.carmenSanDiego.Ocupante
import ar.edu.carmenSanDiego.ListasUtil

@TransactionalAndObservable
@Accessors
class Villano extends Ocupante{
	String nombre = ""
	String sexo = ""
	List<Senia> seniasParticulares = new ArrayList<Senia>()
	List<Hobby> hobbies = new ArrayList<Hobby>()
	
	new (String nombre, String sexo){
		this.nombre = nombre
		this.sexo = sexo
	}
	
	def Villano addSenia(Senia s){
		seniasParticulares.add(s)
		return this
	}	
	
	
	def Villano addHobby(Hobby h){
		hobbies.add(h)
		return this
	}
	
	def removerSenia(Senia senia) {
		seniasParticulares = ListasUtil.eliminar(seniasParticulares, senia)
	}
	
	def removerHobby(Hobby hobby) {
		hobbies = ListasUtil.eliminar(hobbies, hobby)
	}
	
}

@TransactionalAndObservable
@Accessors
class Senia {
	String nombre
	
	new (String nombre){
		this.nombre = nombre
	}
}

@TransactionalAndObservable
@Accessors
class Hobby {
	String nombre
	
	new (String nombre){
		this.nombre = nombre
	}
}	
	
