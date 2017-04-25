package ar.edu.carmenSanDiego

import org.uqbar.commons.utils.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@TransactionalAndObservable
@Accessors

class Pista {
	String tipoPista
	String contenido
	
	new(String tipoPista, String contenido) {
    this.tipoPista = tipoPista
    this.contenido = contenido
  }
	
}