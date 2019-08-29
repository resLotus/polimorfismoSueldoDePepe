object pepe {
	var puesto = cadete

	method sueldo() {
		return puesto.sueldoNeto()
	}
	
	method cambiarPuesto(nuevoPuesto) {
		puesto = nuevoPuesto
	}
}


object gerente {
	method sueldoNeto() { return 15000 }
}

object cadete {
	method sueldoNeto() { return 20000 }
}
