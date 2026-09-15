/** First Wollok example */
object paquete {
	var estaPagado = false

	method estaPagado() {
		return estaPagado
	}

	method precio() {
		return 100()
	}

	method pagar() {
		estaPagado = true
	}

	method puedeMensajeroEntregar(paquete, destino) {
		return paquete.puedeEntregar(destino)
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

object empresaMensajeria{
	const mensajeros = []

	method contratarMensajero(nombreMensajero) {
		mensajeros.add(nombreMensajero)
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

	method primerMensajeroPuedeEnviarPaqueete(paquete) {
		return paquete.puedeEntregar(mensajeros.first())
	}

	method pesoUltimoMensajero() {
		return mensajeros.last().peso()
	}

	method enviar(paquete, undestino) {
		self.hayAlgunMensajeroPuedenEnviarPaquete(paquete, undestino.anyOne())
	}

	method hayAlgunMensajeroPuedenEnviarPaquete(paquete, destino) {
		return mensajeros.any(mensajero => paquete.puedeMensajeroEntregar(mensajero, destino))
	}

	method enviarTodos(paquetes){
		paquetes.forEach(unPaquete => self.enviar(unPaquete, unPaquete.destino))
	}

	method elMasCaro(paquetes){
		return paquetes.max(unPaquete => unPaquete.precio())
	}
}

object paquetito{
	var destino = puenteDeBrooklyn
	var repartidor = jeanGray

	method cambiarDestino(nuevoDestino) {
		destino = nuevoDestino
	}

	method estaPagado() {
		return true
	}

	method assignarRepartidor(empleado) {
		repartidor = empleado
	}

	method puedeEntregar(empleado) {
		return destino.puedePasar(empleado)
	}
}

object paquetonViajero {
	const destinos = []
	var estaPagado = false
	var repartidor = neo
	var precio = 50

	method estaPagado() {
		return estaPagado
	}

	method puedeEntregar(empleado) {
		return destinos.puedePasar(empleado)
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

	method assignarRepartidor(empleado) {
		repartidor = empleado
	}
}