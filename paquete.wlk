/** First Wollok example */
object paquete {
	var destino = matrix
	var estaPagado = false
	var repartidor = neo

	method sePuedeEntregar(){
		return destino.condicionDeEntrega()
	}

	method pesoRepartidor() {
		return repartidor.peso()
	}
	method repartidorPuedeLlamar() {
		return repartidor.puedeLlamar()
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

	method precioEnvio() {return (500 )
	}

	method condicionDeEntrega() {
		return paquete.repartidor.puedeLlamar()
	}
}

object puenteDeBrooklyn {

	method precioEnvio() {return (150 )
	} 

	method condicionDeEntrega() {
		return paquete.repartidor.peso() < 1000
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
	method puedeLlamar() {
		return true
	}

	method peso() {
		return 65
	}

}

object saraConnor {
	var vehiculo = moto

	method puedeLlamar() {
		return false
	}

	method peso(cantidad) {
		return cantidad + vehiculo.pesoVehiculo()
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