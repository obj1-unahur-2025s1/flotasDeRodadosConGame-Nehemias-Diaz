class Dependencia {
  const flotaDeRodados = []
  var property empleados 
  
  method agregarAFlota(unRodado) {
    flotaDeRodados.add(unRodado)
  }
  
  method quitarDeFlota(unRodado) {
    if (not flotaDeRodados.contains(unRodado)) self.error(
        "La flota no contiene el rodado indicado"
      )
    else flotaDeRodados.remove(unRodado)
  }
  
  method pesoTotalFlota() = flotaDeRodados.sum({ f => f.peso() })
  
  method estaBienEquipada() = self.laFlotaTieneAlMenos(3) && self.todosLosRodadosPuedenIrA(100)
  
  method todosLosRodadosPuedenIrA(unaVelocidad) = flotaDeRodados.all({ f => f.velocidadMaxima() >= unaVelocidad })
  
  method laFlotaTieneAlMenos(nroDeRodados) = flotaDeRodados.size() >= nroDeRodados
  
  method capacidadTotalEnColor(unColor) = flotaDeRodados.filter({ f => f.color() == unColor }).sum({ f => f.capacidad() })
  
  method colorDelRodadoMasRapido() = flotaDeRodados.max({ r => r.velocidadMaxima() }).color()

  method capacidadFaltante() = empleados - self.capacidadDeFlota()

  method capacidadDeFlota() = flotaDeRodados.sum({f => f.capacidad()})

  method esGrande() = empleados >= 40 && self.laFlotaTieneAlMenos(5)
}