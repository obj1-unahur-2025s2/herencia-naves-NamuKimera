class NaveEspacial {
  var velocidad
  var direccionSol
  
  method velocidad() = velocidad
  
  method direccionSol() = direccionSol
  
  method acelerar(cuanto) {
    velocidad = (velocidad + cuanto).min(100000)
  }
  
  method desacelerar(cuanto) {
    velocidad = (velocidad - cuanto).max(0)
  }
  
  method irHaciaElSol() {
    direccionSol = 10
  }
  
  method escaparDelSol() {
    direccionSol = -10
  }
  
  method ponerseParaleloAlSol() {
    direccionSol = 0
  }
  
  method acercarseUnPocoAlSol() {
    direccionSol = (direccionSol + 1).min(10)
  }
  
  method alejarseUnPocoDelSol() {
    direccionSol = (direccionSol - 1).max(-10)
  }
}

class NaveBaliza inherits NaveEspacial {
  var color
  
  method cambiarColorDeBaliza(colorNuevo) {
    color = colorNuevo
  }
}

class NavePasajeros inherits NaveEspacial {
  const cantidadPasajeros
  var racionesComida
  var racionesBebida
  
  method cantidadPasajeros() = cantidadPasajeros
  
  method cargarRacionComida(nuevoValor) {
    racionesComida += nuevoValor
  }
  
  method cargarRacionBebida(nuevoValor) {
    racionesBebida += nuevoValor
  }
}

class NaveCombate inherits NaveEspacial {
  var estaInvisible
  var misilesDesplegados
  const mensajesEmitidos = []
  
  method estaInvisible() = estaInvisible
  method ponerseInvisible() {
    estaInvisible = true
  }
  method ponerseVisible() {
    estaInvisible = false
  }
  
  method misilesDesplegados() = misilesDesplegados
  method desplegarMisiles() {
    misilesDesplegados = true
  }
  method replegarMisiles() {
    misilesDesplegados = false
  }

  method mensajesEmitidos() = mensajesEmitidos
  method emitirMensaje(mensaje) {
    mensajesEmitidos.add(mensaje)
  }
  method primerMensajeEmitido() = mensajesEmitidos.first()
  method ultimoMensajeEmitido() = mensajesEmitidos.last()
  method esEscueta() = !self.tieneAlgunMensajeDeMasDe30()
  method tieneAlgunMensajeDeMasDe30() = mensajesEmitidos.any({m => m.size() > 30})
}