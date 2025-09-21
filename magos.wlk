
/*
atributos: energia, poder, habilidadEspecial, horasDeEntrenamiento,  salud

métodos: entrenar, 

*/
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
  var energia = 0
  var horasDeEntrenamiento = 450
  var hechizosDañinos = 0
  var poderbase = 35 - 3*hechizosDañinos

  // academia debe consultar la energía y poder
  method energia(){
    return energia
  }
  method poder(){
    return horasDeEntrenamiento/10
  }

  method entrenar(){
    horasDeEntrenamiento+=100
    hechizosDañinos += 1
  }

}

object iris {
}


object aldric {

}