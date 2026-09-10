/** First Wollok example */
object paquete {
	var destino = matrix
	var estaPagado = false
	var repartidor = neo

	method sePuedeEntregar(){

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

	method assignarRepartidos(empleado) {
		repartidor = empleado
	}
}

object matrix {
	const condicion = 
	method precioEnvio() {return (500 )
	}
}

object puenteDeBrooklyn {
	method precioEnvio() {return (150 )
	} 
}

object neo {
	const peso = 0
	var puedeLlamar = false

	method cargarCredito(){
		puedeLlamar = true
	}
}

object jeangray {
	const peso = 65
	const puedeLlamar = true
}