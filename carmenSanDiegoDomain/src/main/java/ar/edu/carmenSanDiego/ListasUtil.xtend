package ar.edu.carmenSanDiego

import java.util.List

class ListasUtil {
	
	def static <T> eliminar(List<T> list, T element){
		var iterator = list.iterator()
		while (iterator.hasNext()) {
		    var next = iterator.next();
		    if (next.equals(element)) {
		        iterator.remove();
		  	}		    
		}
	}
}