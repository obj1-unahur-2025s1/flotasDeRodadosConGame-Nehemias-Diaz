class Corsa {
  var property color    
  method velocidadMaxima() = 150
  method capacidad() = 4 
  method peso() = 1300
  method initialize() {
    if (not colores.validos().contains(color)) {
      self.error(color.toString() + " No es un color valido " + "los colores validos son: " + colores.validos().toString())
    }
  }
}

object trafic {
  var property color = "Blanco"

}

object colores {
  method validos() = ["Rojo", "Verde", "Azul", "Negro", "Beige", "Blanco"]
}