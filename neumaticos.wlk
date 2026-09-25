import campeonato.*
import pilotos.*


object blando {

    method duracion(piloto) = 15 - piloto.vueltaHastaAhora()
    method rendimientoOptimo(piloto) = carrera.temperatura() < 25 and self.duracion(piloto) > 0

}

object medio {
    method duracion(piloto) = 30 - piloto.vueltaHastaAhora()
    method rendimientoOptimo(piloto) = carrera.temperatura().between(25, 40) and self.duracion(piloto) > 0

}

object duro {
    method duracion(piloto) = 45 - piloto.vueltaHastaAhora()
    method rendimientoOptimo(piloto) = carrera.temperatura() > 40 and self.duracion(piloto) > 0

}