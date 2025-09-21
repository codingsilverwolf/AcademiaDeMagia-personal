
/*
atributos: energia, poder, habilidadEspecial, horasDeEntrenamiento,  salud

métodos: entrenar, 

*/
import academia.*
object selene {
  var energia = 35
  var poder = 60
  var luzLunar = false
  var estaPotenciada = true

  // academia debe consultar la energía y poder
  method energia(){
    return energia
  }
  method poder(){
    return poder
  }
  method alternarLuzLunar(){
    luzLunar = not luzLunar
  }
  method noEstaPotenciada(){
    estaPotenciada = not estaPotenciada
  }
  method entrenar(){
    if (estaPotenciada) {
      poder = 2*poder
    }
    else {
      energia+= 25
    }
  }
  
}


object balthazar {
  // necesito polimorfismo de energía y poder
  var energia = 0
  var hechizosDañinos = 0
  var horasDeEntrenamiento = 450
  
  // academia debe consultar la energía y poder
  method energia(){
    return energia
  }
   
  method poder(){
    return 35 - 3*hechizosDañinos + horasDeEntrenamiento/10
  }

  method entrenar(){
    horasDeEntrenamiento+=100
    hechizosDañinos += 1
  }

}

object iris {
  var capacidadDeSanacion = 2
  method energia() = 80
  method poder() = 35
  
  method capacidadDeSanacion(){
    return capacidadDeSanacion
  }

  method entrenar(){
    capacidadDeSanacion+=1
  }

  method usarSanacionEnEscudoMagicoDeArcana(){
    escudo.mejorarResistencia()
    escudo.mejorarDurabilidad()
  }

}

object escudo{
  var resistencia = 400
  var durabilidad = 600
  method durabilidad() {
    return durabilidad.min(1000)    
  }
  method mejorarResistencia(){
    if (iris.capacidadDeSanacion() % 2 == 1){
      resistencia+= 150*iris.capacidadDeSanacion()
    }
    else{
      resistencia+= 80*iris.capacidadDeSanacion()
    }
  }
  method mejorarDurabilidad(){
    if (iris.capacidadDeSanacion() % 2 == 1){
      durabilidad+= 100*iris.capacidadDeSanacion()
    }
    else{
      durabilidad+= 60*iris.capacidadDeSanacion()
    }

  }
}

object aldric {

}