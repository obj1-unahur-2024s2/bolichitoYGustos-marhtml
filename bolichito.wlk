import objetos.*
import personas.*
import colores.*
import materiales.*
object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota

    method objetoEnVidriera(unObjeto) {
        objetoEnVidriera = unObjeto
    }
    method objetoEnVidriera() = objetoEnVidriera

    method objetoEnMostrador(unObjeto){
        objetoEnMostrador = unObjeto
    }
    method objetoEnMostrador() = objetoEnMostrador

    method esBrillante()=
        objetoEnMostrador.material().esBrillante()  
        and objetoEnVidriera.material().esBrillante() 
    
    method esMonocromatico() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method hayObjetoDeColor(unColor){
        return objetoEnMostrador.color() == unColor
        or objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() 
        or self.esMonocromatico()
    }

    method lePuedoOfrecerA(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador)
        || unaPersona.leGusta(objetoEnVidriera)
    }

}
