//
//  Item.swift
//  PracticaJuego
//
//  Created by Miquel on 21/11/18.
//  Copyright © 2018 Miquel. All rights reserved.
//

import Foundation
import UIKit

class Item{
    var nombre:String
    var ataque:Int
    var defensa:Int
    var magia:Int
    var suerte:Int
    var tipo:String
    var imagen:UIImage?
    var precio:Int
    
    init(nombre:String, ataque:Int, defensa:Int, magia:Int, suerte:Int, tipo:String, imagen:UIImage) {
        self.nombre=nombre
        self.ataque=ataque
        self.defensa=defensa
        self.magia=magia
        self.suerte=suerte
        self.tipo=tipo
        self.imagen=imagen
        self.precio=40
    }
    
    
}
