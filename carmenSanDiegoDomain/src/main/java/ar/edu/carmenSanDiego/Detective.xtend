package ar.edu.carmenSanDiego

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.TransactionalAndObservable
import ar.edu.carmenSanDiego.mapamundi.Pais
import ar.edu.carmenSanDiego.mapamundi.LugarInteres

@TransactionalAndObservable
@Accessors

class Detective {
	Pais pais
	LugarInteres lugarInteres
	Caso caso
	
}