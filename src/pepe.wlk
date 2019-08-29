object pepe {
	var puesto = cadete
	var resultado = montoFijo
	var presentismo = normal
	var faltas = 0
	
	method sueldo() {
		return puesto.sueldoNeto() + resultado.bonoPorResultados(puesto) + presentismo.bonoPorPresentismo(faltas, puesto)
	}
	
	method cambiarPuesto(nuevoPuesto) {
		puesto = nuevoPuesto
	}
	
	method cambiarResultado(nuevoResultado) {
		resultado = nuevoResultado
	}
	
	method cambiarPresentismo(nuevoPresentismo) {
		presentismo = nuevoPresentismo
	}
	
	method cambiarFaltas(nuevasFaltas) {
		faltas = nuevasFaltas
	}
}

object sofia {
	var puesto = cadete
	var resultado = montoFijo

	method sueldo() {
		return puesto.sueldoNeto() * 1.3 + resultado.bonoPorResultados(puesto)
	}
	
	method cambiarPuesto(nuevoPuesto) {
		puesto = nuevoPuesto
	}
	
	method cambiarResultado(nuevoResultado) {
		resultado = nuevoResultado
	}
}

object gerente {
	method sueldoNeto() = 15000
}

object cadete {
	method sueldoNeto() = 20000 
}

object vendedor {
	var bono
	
	method sueldoNeto() = 16000 * bono
	
	method activarAumentoPorMuchasVentas() {
		bono = 1.25
	}
	
	method desactivarAumentoPorMuchasVentas() {
		bono = 1
	}
}

object porcentaje {
	method bonoPorResultados(puesto) = puesto.sueldoNeto() * 0.1
}

object montoFijo {
	method bonoPorResultados(puesto) = 800
}

object nulo {
	method bonoPorResultados(puesto) = 0
	
	method bonoPorPresentismo(faltas, puesto) = 0
}

object normal {
	method bonoPorPresentismo(faltas, puesto) = if (faltas == 0) 2000 else if (faltas == 1) 1000 else 0
}

object ajuste {
	method bonoPorPresentismo(faltas, puesto) =	if (faltas == 0) 100 else 0
}

object demagogico {
	method bonoPorPresentismo(faltas, puesto) = if (puesto.sueldoNeto() < 18000) 500 else 300
}
