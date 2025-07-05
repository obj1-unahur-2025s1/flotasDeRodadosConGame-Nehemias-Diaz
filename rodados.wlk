class Corsa {
  var property color
  
  method capacidad() = 4
  
  method velocidadMaxima() = 150
  
  method peso() = 1300
}

class Kwid {
  var property tieneTanqueAdicional
  
  method capacidad() = if (tieneTanqueAdicional) 3 else 4
  
  method velocidadMaxima() = if (tieneTanqueAdicional) 120 else 110
  
  method peso() = 1200 + self.adicional()
  
  method adicional() = if (tieneTanqueAdicional) 150 else 0
  
  method color() = azul
}

class AutoEspecial {
  var property capacidad
  var property velocidadMaxima
  var property peso
  var property color    
}

object trafic {
  var interior = popular
  var motor = bataton
  
  method cambiarInterior(otroInterior) {
    interior = otroInterior
  }
  
  method cambiarMotor(otroMotor) {
    motor = otroMotor
  }
  
  method color() = blanco
  
  method capacidad() = interior.capacidad()
  
  method velocidadMaxima() = motor.velocidadMaxima()
  
  method peso() = (4000 + interior.peso()) + motor.peso()
} 

// Motores !!!!!!!!!!!!!!!!!!!!!!!
object pulenta {
  method peso() = 800
  
  method velocidadMaxima() = 130
}

object bataton {
  method peso() = 500
  
  method velocidadMaxima() = 80
}

// Interiores !!!!!!!!!!!!!!!!!!!!
object comodo {
  method capacidad() = 5
  
  method peso() = 700
}

object popular {
  method capacidad() = 12
  
  method peso() = 1000
}

// Colores !!!!!!!!!!!!!!!!!!!!!!!!

object azul {
  
}

object blanco {
  
}

object beige {
  
}

object verde {
  
}

object rojo {
  
}