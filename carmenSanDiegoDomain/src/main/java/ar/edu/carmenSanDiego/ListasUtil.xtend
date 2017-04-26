package ar.edu.carmenSanDiego

import java.util.List
import java.util.ArrayList

class ListasUtil {
	
	def static <T> eliminar(List<T> list, T element){
		return list.filter[ e | e != element ].toList
	}
}