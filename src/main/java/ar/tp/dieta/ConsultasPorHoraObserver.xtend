package ar.tp.dieta

import java.util.Calendar
import java.util.GregorianCalendar
import java.util.HashMap
import java.util.Map

class ConsultasPorHoraObserver implements ConsultaObserver{
	
	Map<Integer,Integer> consultasPorHora = new HashMap<Integer,Integer>()
	Calendar calendario = new GregorianCalendar()
	
	override actualizar(Usuario usuario,Receta receta){
		val int hora = calendario.get(Calendar.HOUR_OF_DAY)
		if(!consultasPorHora.containsKey(hora)){
			consultasPorHora.put(hora,1)
		}else{
			consultasPorHora.put(hora,consultasPorHora.get(hora)+1)
		}
	
	}
	
	def mostrarConsultasDeHora(int hora){
		println(consultasPorHora.get(hora))
	}
	
}