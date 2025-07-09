class Pedido {
  var property distancia
  var property tiempoMaximo
  var property cantidadDePasajeros
  var property coloresIncompatibles
  
  method velocidadRequerida() = distancia / tiempoMaximo
  
  method elAutoPuedeSatisfacerAlPedido(
    unAuto
  ) = (((unAuto.velocidadMaxima() - self.velocidadRequerida()) >= 10) && unAuto.tieneCapacidadParaPasajeros(
    self.cantidadDePasajeros()
  )) && (!coloresIncompatibles.contains(unAuto.color()))
  
  method acelerar() {
    tiempoMaximo = (tiempoMaximo - 1).max(0)
  }
  
  method relajar() {
    tiempoMaximo += 1
  }
}