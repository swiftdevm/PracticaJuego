//
//  Monstruo.swift
//  PracticaJuego
//
//  Created by dmorenoar on 23/11/2018.
//  Copyright © 2018 Miquel. All rights reserved.
//

import Foundation
import UIKit

class Monstruo{
    var nombre:String
    var ataque:Int
    var oro:Int
    var exp:Int
    var imagen:UIImage = UIImage()
    
    init(nombre:String, ataque:Int, oro:Int, exp:Int, imagen:UIImage) {
        self.nombre=nombre
        self.ataque=ataque
        self.oro=oro
        self.exp=exp
        self.imagen=imagen
    }
}
