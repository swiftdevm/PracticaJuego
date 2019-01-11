//
//  Heroe.swift
//  PracticaJuego
//
//  Created by Miquel on 21/11/18.
//  Copyright © 2018 Miquel. All rights reserved.
//

import Foundation
import UIKit

class Heroe {
    var nombre:String
    var dinero:Int
    var ataque:Int?
    var defensa:Int?
    var magia:Int?
    var suerte:Int?
    var equipo:Stuff?
    var exp:Int
    var imagen:UIImage?
    var vidas:Int
    //ataque:Int, defensa:Int, magia:Int, suerte:Int
    init(nombre:String, dinero:Int, exp:Int, vidas:Int, imagen:UIImage,equipo:Stuff) {
        self.nombre=nombre
        self.dinero=dinero
        self.imagen = imagen
        self.exp=exp
        self.equipo = equipo
        self.vidas = vidas
    }
}
