class NaveEspacial {
  var velocidad
  var direccionSol
  
  method velocidad() = velocidad
  
  method direccionSol() = direccionSol
  
  method acelerar(cuanto) {
    velocidad = cuanto.max(100000)
  }
  
  method desacelerar(cuanto) {
    velocidad = cuanto.min(0)
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
    direccionSol += 1
  }
  
  method alejarseUnPocoDelSol() {
    direccionSol -= 1
  }
}

class NaveBaliza inherits NaveEspacial {
  var color
  
  method cambiarColorDeBaliza(colorNuevo) {
    color = colorNuevo
  }
}

class NavePasajeros inherits NaveEspacial {
  
}

class NaveCombate inherits NaveEspacial {
  
}