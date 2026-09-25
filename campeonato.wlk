import pilotos.*
import escuderias.*
import neumaticos.*

object carrera {
  var temperatura = 40

  method temperatura() = temperatura
  method cambiarTemperatura(unNumero) {temperatura = unNumero}
}

object campeonato {
  const pilotosDeTemporada = []
  method pilotosDeTemporada() = pilotosDeTemporada 
  method registrarPiloto(piloto) { pilotosDeTemporada.add(piloto) }
  method registrarVariosPilotos(listaDePilotos) {pilotosDeTemporada.addAll(listaDePilotos)}
  method darDeBajaPiloto(piloto) { pilotosDeTemporada.remove(piloto) }
  method primerPuesto() = pilotosDeTemporada.max({p => p.puntos()})
  method segundoPuesto() = pilotosDeTemporada.filter({ p => p != self.primerPuesto() }).max({ p => p.puntos() })
  method masDe300Puntos() = pilotosDeTemporada.filter({p => p.puntos() > 300})
  method hayPilotoDeEscuderia(unaEscuderia) = pilotosDeTemporada.any({p => p.escuderia() == unaEscuderia })
  method cuantasEscuderiasHay(){
    return pilotosDeTemporada.map({p => p.escuderia()}).asSet().size()
  }
  method escuderiasDeTemporada() = pilotosDeTemporada.map({p => p.escuderia()})
  method puntosTotalesEscuderia(escuderia) {
    return escuderia.pilotos().sum({p => p.puntos()})
  }
  method escuderiaConMasPuntos() {
    return self.escuderiasDeTemporada().max({
      e => e.pilotos().sum({p => p.puntos()})
    })
  }
  method pilotosConNeumaticoFueraDeSuRango() = pilotosDeTemporada.filter({ p => not p.estaRindiendo() })
  method losPilotosTienenALMenos5Vueltas() = pilotosDeTemporada.all({p => p.vueltaHastaAhora() >= 5})
  method deltaDePuntos() = self.primerPuesto().puntos() - self.pilotoUltimoDelCampeonato().puntos()
  method pilotoUltimoDelCampeonato() = pilotosDeTemporada.min({ a => a.puntos() })
  method esCompetitivo() = self.deltaDePuntos() < 100
}