package ar.tp.dieta

import java.util.List
import java.util.ArrayList

class FiltroPorGustos extends FiltroDecorator {
	
	new (Filtro decorado){
		super(decorado)
	}
	
	override aplicarFiltro(Usuario unUsuario){
		var List<Receta> recetasADevolver = new ArrayList<Receta>
		recetasFiltradas = decorado.aplicarFiltro(unUsuario)
		for (Receta elemento : recetasFiltradas.filter[receta | !unUsuario.noMeGustaEstaReceta(receta)]) {
				recetasADevolver.add(elemento)
			}
			recetasADevolver
	}
		
	//override aplicarFiltroGrupo(Grupo unGrupo){}	
		
}

