package ar.edu.carmenSanDiego.widgets

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.tables.Column

@Accessors
class GameTable<T> extends Table<T>{
	String tituloTabla
	String tituloSeccion
	String atributo
	Panel panel
	Label label
		
	static def <T> crear(Panel panel, Class<T> itemType){
		return new GameTable(panel, itemType, new Label(panel))
	}	
	
	new(Panel panel, Class<T> itemType, Label label) {
		super(panel, itemType)
		this.label = label		
		
	}
	
	def bind(){
		this.label.text= tituloSeccion
		 
		bindItemsToProperty(atributo)
		new Column<T>(this) => [
		   title = tituloTabla
		   fixedSize = 500
		   bindContentsToProperty("nombre")
		]
		
		return this
	}
}
