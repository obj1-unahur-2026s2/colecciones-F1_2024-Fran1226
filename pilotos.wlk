import escuderias.*
import neumaticos.*

object verstappen {
  var puntos = 437
  var neumaticosActuales = blando
  var vueltasHastaAhora = 0

  method puntos() = puntos
  method escuderia() = redBull
  method vueltaHastaAhora() = vueltasHastaAhora

  method sumarVueltas(cantidad) {
    vueltasHastaAhora += cantidad
  }

  method presupuestoAnual() { 
    redBull.presupuestoAnual()
  }
  method ganarCarrera() { 
    self.sumarPuntos(25) 
  }

  method vueltaRapida() { 
    if (puntos > 200) { self.sumarPuntos(1) } 
    else {0} }

  method sumarPuntos(cantidad) {
    puntos += cantidad
  }

  method perderPuntos(cantidad) {
      puntos -= cantidad
  }
  method vueltasRestantesConNeumatico() = neumaticosActuales.duracion(self)
  method estaRindiendo() = neumaticosActuales.rendimientoOptimo(self)
  method entrarAlPit(neumatico) {
    neumaticosActuales = neumatico
  }
}

object norris {
  var puntos = 374
  var  neumaticosActuales = blando
  var vueltasHastaAhora = 0

  method puntos() = puntos
  method escuderia() = mcLaren
  method vueltaHastaAhora() = vueltasHastaAhora

  method sumarVueltas(cantidad) {
    vueltasHastaAhora += cantidad
  }

  method presupuestoAnual() {
    mcLaren.presupuestoAnual()
  }

  method ganarCarrera() { 
    self.sumarPuntos(25) 
  }

  method GanarCarreraCon(piastri) { 
    self.ganarCarrera() 
    piastri.sumarPuntos(3)
  }

  method sumarPuntos(cantidad) {
    puntos += cantidad
  }

  method perderPuntos(cantidad) {
    puntos -= cantidad
  }

  method vueltaRapida() { 
    if (puntos > 200) { self.sumarPuntos(1) } 
    else {0} }

  method vueltasRestantesConNeumatico() = neumaticosActuales.duracion(self)

  method estaRindiendo() = neumaticosActuales.rendimientoOptimo(self)

  method entrarAlPit(neumatico) {
    neumaticosActuales = neumatico
  }
}

object sainz {
  var puntos = 241
  var neumaticosActuales = blando
  var vueltasHastaAhora = 0

  method puntos() = puntos
  method escuderia() = ferrari
  method vueltaHastaAhora() = vueltasHastaAhora

  method sumarVueltas(cantidad) {
    vueltasHastaAhora += cantidad
  }

  method presupuestoAnual() {
    ferrari.presupuestoAnual()
  }

  method ganarCarrera() { 
    self.sumarPuntos(25) 
  }

  method GanarCarreraEnRacha() { 
    self.ganarCarrera() 
    self.sumarPuntos(10)
  }

  method sumarPuntos(cantidad) {
    puntos += cantidad
  }

  method vueltaRapida() {}

  method perderPuntos(cantidad) {
    puntos -= cantidad
  }

  method vueltasRestantesConNeumatico() = neumaticosActuales.duracion(self)

  method estaRindiendo() = neumaticosActuales.rendimientoOptimo(self)

  method entrarAlPit(neumatico) {
    neumaticosActuales = neumatico
  }  
}

object leclerc {
  var puntos = 356
  var neumaticosActuales = blando
  var vueltasHastaAhora = 0

  method puntos() = puntos
  method escuderia() = ferrari
  method vueltaHastaAhora() = vueltasHastaAhora

  method sumarVueltas(cantidad) {
    vueltasHastaAhora += cantidad
  }

  method presupuestoAnual() {
    ferrari.presupuestoAnual()
  }
  
  method ganarCarrera() { 
    self.sumarPuntos(25) 
  }

  method descontarPuntos(piloto) {
    piloto.perderPuntos(3)
  }
  
  method sumarPuntos(cantidad) {
    puntos += cantidad
  }
  
  method vueltaRapida() {
   self.sumarPuntos(2)
  }

  method perderPuntos(cantidad) {
    puntos -= cantidad
  }

  method vueltasRestantesConNeumatico() = neumaticosActuales.duracion(self)

  method estaRindiendo() = neumaticosActuales.rendimientoOptimo(self)

  method entrarAlPit(neumatico) {
    neumaticosActuales = neumatico
  }    
}

object piastri {
  var puntos = 292
  var neumaticosActuales = blando
  var vueltasHastaAhora = 0

  method puntos() = puntos
  method escuderia() = mcLaren
  method vueltaHastaAhora() = vueltasHastaAhora

  method sumarVueltas(cantidad) {
    vueltasHastaAhora += cantidad
  }

  method presupuestoAnual() {
   mcLaren.presupuestoAnual()
  }

  method ganarCarrera() { 
    self.sumarPuntos(25) 
  }

  method sumarPuntos(cantidad) {
    puntos += cantidad
  }

  method perderPuntos(cantidad) {
    puntos -= cantidad
  }
    
  method vueltasRestantesConNeumatico() = neumaticosActuales.duracion(self)

  method estaRindiendo() = neumaticosActuales.rendimientoOptimo(self)

  method entrarAlPit(neumatico) {
    neumaticosActuales = neumatico
  }    
}