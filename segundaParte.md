## Segunda parte: Empresa de mensajería 

Ahora aparece una empresa de mensajería. Esta tiene un conjunto de mensajeros, los cuales podrían ser cualquiera de los que ya tenemos y otros que se agreguen en el futuross. 

Se necesita poder:

1. Contratar a un mensajero
2. Despedir a un mensajero
3. Despedir a todos los mensajeros
4. Analizar si la mensajeria es grande (si tiene mas de dos mensajeros)
5. Consultar si el paquete puede ser entregado por el primer empleado de la la empresa de mensajería. 
6. Saber el peso del último mensajero de la empresa. 
7. Hacer al menos un test por cada punto de los anteriores que demuestren su correcto funcionamiento.


## Tercera parte: Mensajería  recargada

Nuevos requerimientos para la mensajería. Surgen otros paquetes que la empresa necesita enviar:
- Paquetito: es gratis, o sea, simpre está pago. Ademas, cualquier mensajero lo puede llevar.
- Paqueton viajero: tiene múltiples destinos. Su precio es 100$ por cada destino. Se puede ir pagando parcialmente y se debe pagar totalmente para poder ser enviado. Además, el mensajero debe poder pasar por todos los destinos.
- Se sabe que el paquete original tiene un precio determinado en $50.

Se necesita:
1. Averiguar si un paquete puede ser entregado por la empresa de mensajería, es decir, si al menos uno de sus mensajeros puede entregar el paquete.
2. Obtener todos los mensajeros que pueden llevar un paquete dado. 
3. Saber si una mensajería tiene sobrepeso. Esto sucede si el promedio del peso de los mensajeros es superior a 500 Kg. 
4. Hacer que la empresa de mensajería envíe un paquete. Para ello elige cualquier mensajero entre los que pueden enviarlo y si no puede lo agrega a los paquetes pendientes. (leer también punto siguiente)
5. Conocer la facturación de la empresa, que es el total ganado por los paquetes enviados.
6. Dado un conjunto de paquetes, enviarlos a todos.
7. Encontrar el paquete pendiente más caro y enviarlo, actualizando los pendientes en caso de haberlo podido enviar.
8. Cada punto debe tener mínimo un test que demuestren su correcto funcionamiento.
9. Agregar un nuevo mensajero y un nuevo paquete y garantizar que todo siga funcionando.