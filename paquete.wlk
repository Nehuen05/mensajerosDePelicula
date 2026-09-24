/** First Wollok example */
object paquete {
	var estaPagado = false

	method estaPagado() {
		return estaPagado
	}

	method precio(destino) {
		return destino.precioEnvio()
	}

	method pagar() {
		estaPagado = true
	}

	method puedeSerEntregadoAlDestinoPor(empleado, destino) {
		return destino.puedePasar(empleado) && estaPagado
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
		return repartidor.peso() <= 1000
	}

}

object neo {
	var tieneCredito = false

	method puedeLlamar() {
		return tieneCredito
	}

	method puedeEntregar( destino) {
		return destino.puedePasar(self)
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

	method puedeEntregar( destino) {
		return destino.puedePasar(self)
	}

}

object saraConnor {
	var peso = 60
	var vehiculo = moto

	method puedeLlamar() {
		return false
	}

	method puedeEntregar( destino) {
		return destino.puedePasar(self)
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

object empresaMensajeria{
	const mensajeros = []
	const listaDePaquetes = []

	method contratarMensajero(nombreMensajero) {
		mensajeros.add(nombreMensajero)
	}

	method agregarPaquete(paquete) {
		listaDePaquetes.add(paquete)
	}

	method cantidadMensajeros() {
		return mensajeros.size()
	}

	method despedirMensajero(nombreMensajero) {
		mensajeros.remove(nombreMensajero)
	}

	method despedirATodosLosMensajeros() {
		mensajeros.clear()
	}

	method laMensajeriaEsGrande() {
		return mensajeros.size() >= 2
	}

	method primerMensajeroPuedeEnviarPaqueete(paquete, destino) {
		return paquete.puedeEntregar(mensajeros.first(), destino)
	}

	method pesoUltimoMensajero() {
		return mensajeros.last().peso()
	}

	method enviar(unPaquete, unDestino) {
		self.hayAlgunMensajeroQuePuedenEnviarUnPaquete(unPaquete, unDestino.anyOne())
	}

	method hayAlgunMensajeroQuePuedenEnviarUnPaquete(unPaquete, destino) {
		return mensajeros.any { mensajero => unPaquete.puedeEntregar(mensajero, destino) }
	}

	method elMasCaro(paquetes){
		return paquetes.max{unPaquete => unPaquete.precio()}
	}
}

object paquetito{
	const property estaPagado =  true

	method precio() {
		return 0
	}

	method puedeSerEntregadoAlDestinoPor(empleado,destino) {
		return destino.puedePasar(empleado) && estaPagado
	}
}

object paquetonViajero {
	const destinos = []
	var estaPagado = false
	var precio = 50

	method precio() {
		return precio
	}

	method estaPagado() {
		return estaPagado
	}

	method puedeSerEntregadoAlDestinoPor(empleado,destinoEsperado) {
		return if (destinos.find({destino => destino == destinoEsperado}))
		 destinoEsperado.puedePasar(empleado) && estaPagado
	}

	method precioXDestino() {
		precio = destinos.size() * 100 + 50
		return precio
	}

	method agregarDestino(nuevoDestino) {
		destinos.add(nuevoDestino)
	}

	method cancelarEnvio() {
		destinos.clear()
	}

	method eliminarDestino(nuevoDestino) {
		destinos.remove(nuevoDestino)
	}

	method pagar() {
		estaPagado = true
	}

}