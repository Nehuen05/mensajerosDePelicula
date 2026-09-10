/** First Wollok example */
object paquete {
	var destino = matrix
	var estaPagado = false
	var repartidor = neo

	method estaPagado() {
		return estaPagado
	}

	method puedeEntregar(empleado) {
		return destino.puedePasar(empleado)
	}

	method precioXDestino() {
		return destino.precioEnvio()
	}

	method cambiarDestino(nuevoDestino) {
		destino = nuevoDestino
	}

	method pagar() {
		estaPagado = true
	}

	method assignarRepartidor(empleado) {
		repartidor = empleado
	}
}

object matrix {

	method precioEnvio() {return 500 
	}

	method puedePasar(repartidor) {
		return repartidor.puedeLlamar()
	}
}

object puenteDeBrooklyn {

	method precioEnvio() {return 150 
	}

	method puedePasar(repartidor) {
		return repartidor.peso() < 1000
	}

}

object neo {
	var tieneCredito = false

	method puedeLlamar() {
		return tieneCredito
	}

	method cargarCredito(){
		tieneCredito = true
	}

	method peso() {
		return 0
	}
}

object jeanGray {
	const peso = 65
	method puedeLlamar() {
		return true
	}

	method peso() {
		return peso
	}

}

object saraConnor {
	var peso = 60
	var vehiculo = moto

	method puedeLlamar() {
		return false
	}

	method cambiarPeso(nuevoPeso) {
		peso = nuevoPeso
	}

	method peso() {
		return peso + vehiculo.pesoVehiculo()
	}

	method cambiarVehiculo(nuevoVehiculo) {
		vehiculo = nuevoVehiculo
	}
}

object moto {
	method pesoVehiculo() {
		return 100
	} 
}

object camion {
	var cantAcoplados = 0

	method pesoVehiculo() {
		return 500 + cantAcoplados * 500
	} 

	method cambiarAcoplados(cantidad) {
		cantAcoplados = cantidad
	}
}