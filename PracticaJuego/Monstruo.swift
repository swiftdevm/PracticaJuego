
import Foundation
import UIKit


class Monstruo{
    var nombre:String
    var ataque:Int
    var oro:Int
    var exp:Int
    var imagen:UIImage?
    var vida:Int
    
    init(nombre:String, ataque:Int, oro:Int, exp:Int, vida:Int, imagen:UIImage) {
        self.nombre=nombre
        self.ataque=ataque
        self.oro=oro
        self.exp=exp
        self.vida=vida
        self.imagen=imagen
    }
  
}
