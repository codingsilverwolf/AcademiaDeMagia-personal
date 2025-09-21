/*
métodos: reclutar, poderTotal, deltaEnergia, ...

*/

import magos.*
object academina {
  const equipoDeMagos = []
  const listaDeCandidatos = []
  const listaDePoderes = []
  method evaluar(unMago){
    if (unMago.energia()>40 and unMago.poder()>= 30){
      unMago.adicionalAlEquipo()
    }
    else{
      listaDeCandidatos.add(unMago)
    }
  }
  method adicionarAlEquipo(unMago){
    if (listaDeCandidatos.contains(unMago)){
      listaDeCandidatos.remove(unMago)
      equipoDeMagos.add(unMago)
    }
    else{
      equipoDeMagos.add(unMago)
    }
  }
  method poderTotalDelEquipo(){
    return equipoDeMagos.sum()
  }
  method elEquipoEstaOptimo(){
    return not equipoDeMagos.any({m => m.energia() < 45})
  }
  method deltaEnergia(){
    return equipoDeMagos.fold(equipoDeMagos.anyOne(), {accum, mago =>  accum.poder().max(mago.poder())})
    
  }

  method listaDePoderes(){
    return equipoDeMagos.filter({m => m.poder()>90})

  }
}