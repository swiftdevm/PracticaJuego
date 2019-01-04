//
//  ViewController.swift
//  PracticaJuego
//
//  Created by Miquel on 21/11/18.
//  Copyright © 2018 Miquel. All rights /Volumes/KINGSTON/DAM2/IOS/PracticaJuego/PracticaJuego/Item.swiftreserved.
//

import UIKit

var thehero:Heroe?
var listaItems = [Item]()

class ViewController: UIViewController {
    
    var casco1 = Item(nombre: "Casco1", ataque: 3, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet1")!)
    
    var peto1 = Item(nombre: "Peto1", ataque: 2, defensa: 5, magia: 0, suerte: 0, tipo: "Peto", imagen: UIImage(named: "armour")!)
    
    var botas1 = Item(nombre: "Botas1", ataque: 0, defensa: 5, magia: 0, suerte: 0, tipo: "Botas", imagen: UIImage(named: "boots")!)
    
    var espada1 = Item(nombre: "Espada1", ataque: 4, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "sword1")!)
    
    var escudo1 = Item(nombre: "Escudo1", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield")!)
    
    var anillo1 = Item(nombre: "Anillo1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "ring")!)
    
    
    //////
    
    var casco2 = Item(nombre: "Casco2", ataque: 0, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet2")!)
    
    var peto2 = Item(nombre: "Peto2", ataque: 1, defensa: 5, magia: 0, suerte: 0, tipo: "Peto", imagen: UIImage(named: "armour2")!)
    
    var botas2 = Item(nombre: "Botas2", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Botas", imagen: UIImage(named: "boots2")!)
    
    var espada2 = Item(nombre: "Espada2", ataque: 6, defensa: 5, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter")!)
    
    var escudo2 = Item(nombre: "Escudo2", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield2")!)
    
    var anillo2 = Item(nombre: "Anillo2", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "ring2")!)
    
    //CREACION ITEMS
    
    var casco4 = Item(nombre: "Casco4", ataque: 3, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet4")!)
    
    var peto3 = Item(nombre: "Peto3", ataque: 2, defensa: 5, magia: 0, suerte: 0, tipo: "Peto", imagen: UIImage(named: "armour3")!)
    
    var casco5 = Item(nombre: "Casco5", ataque: 0, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet5")!)
    
    var espada4 = Item(nombre: "Espada4", ataque: 4, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "sword4")!)
    
    var escudo3 = Item(nombre: "Escudo3", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield3")!)
    
    var escudo4 = Item(nombre: "Escudo5", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield4")!)
    
    
    
    @IBAction func btnSpike(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            let spike = Heroe(nombre: "Spike", dinero: 100, ataque: 4, defensa: 5, magia: 0, suerte: 6, exp: 10, vidas: 4, imagen: UIImage(named: "heroe1")!, equipo: Stuff(stuff: [ "Casco" : casco1, "Peto" : peto1, "Botas" : botas1, "Arma" : espada1, "Mano" : escudo1, "Anillo" : anillo1 ]))
            
            thehero = spike
            
        case 1:
            let hawk = Heroe(nombre: "Hawk", dinero: 100, ataque: 1, defensa: 2, magia: 5, suerte: 6, exp: 10, vidas: 3, imagen: UIImage(named: "heroe3")!, equipo: Stuff(stuff: [ "Casco" : casco2, "Peto" : peto2, "Botas" : botas2, "Arma" : espada2, "Mano" : escudo2, "Anillo" : anillo2 ]))
            
            thehero = hawk
            
        case 2:
            let rei = Heroe(nombre: "Rei", dinero: 100, ataque: 5, defensa: 5, magia: 5, suerte: 5, exp: 10, vidas: 2, imagen: UIImage(named: "heroe4")!, equipo: Stuff(stuff: [ "Casco" : casco1, "Peto" : peto1, "Botas" : botas1, "Arma" : espada1, "Mano" : escudo1, "Anillo" : anillo1 ]))
            
            thehero = rei
            
        default:
            print("nada")
        }
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        listaItems.append(casco4)
        listaItems.append(peto3)
        listaItems.append(casco5)
        listaItems.append(espada4)
        listaItems.append(escudo3)
        listaItems.append(escudo4)

        
    }


}

