/** First Wollok example */
object paquete {
	var destino = matrix
	var estaPagado = false

	method precioXDestino() {
		if (destino == "matrix") {
			return matrix.precioEnvio()
		} else if (destino == "puenteDeBrooklyn") {
			return puenteDeBrooklyn.precioEnvio()
		} else {
			return 0
		}
	}

	method cambiarDestino(nuevoDestino) {
		destino = nuevoDestino
	}

	method pagar() {
		estaPagado = true
	}
}

object matrix {
	method precioEnvio() {return (500 )}
}

object puenteDeBrooklyn {
	method precioEnvio() {return (150 )} 


}