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
    
    var casco1 = Item(nombre: "Casco1", ataque: 3, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet1")!, precio: 40)
    
    var peto1 = Item(nombre: "Peto1", ataque: 2, defensa: 5, magia: 0, suerte: 0, tipo: "Peto", imagen: UIImage(named: "armour")!, precio: 40)
    
    var botas1 = Item(nombre: "Botas1", ataque: 0, defensa: 5, magia: 0, suerte: 0, tipo: "Botas", imagen: UIImage(named: "boots")!, precio: 40)
    
    var espada1 = Item(nombre: "Espada1", ataque: 4, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "sword1")!, precio: 40)
    
    var escudo1 = Item(nombre: "Escudo1", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield")!, precio: 40)
    
    var anillo1 = Item(nombre: "Anillo1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "ring")!, precio: 40)
    
    
    var casco2 = Item(nombre: "Casco2", ataque: 0, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet2")!, precio: 40)
    
    var peto2 = Item(nombre: "Peto2", ataque: 1, defensa: 5, magia: 0, suerte: 0, tipo: "Peto", imagen: UIImage(named: "armour2")!, precio: 40)
    
    var botas2 = Item(nombre: "Botas2", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Botas", imagen: UIImage(named: "boots2")!, precio: 40)
    
    var espada2 = Item(nombre: "Espada2", ataque: 6, defensa: 5, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter")!, precio: 40)
    
    var escudo2 = Item(nombre: "Escudo2", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield2")!, precio: 40)
    
    var anillo2 = Item(nombre: "Anillo2", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "ring2")!, precio: 40)
    
    
    var casco4 = Item(nombre: "Casco4", ataque: 3, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet4")!, precio: 40)
    
    var peto3 = Item(nombre: "Peto3", ataque: 2, defensa: 5, magia: 0, suerte: 0, tipo: "Peto", imagen: UIImage(named: "armour3")!, precio: 40)
    
    var casco5 = Item(nombre: "Casco5", ataque: 0, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet5")!, precio: 40)
    
    var espada4 = Item(nombre: "Espada4", ataque: 4, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "sword4")!, precio: 40)
    
    var escudo3 = Item(nombre: "Escudo3", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield3")!, precio: 40)
    
    var escudo4 = Item(nombre: "Escudo4", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield4")!, precio: 40)
    
    var arco = Item(nombre: "Arco1", ataque: 0, defensa: 4, magia: 5, suerte: 3, tipo: "Espada", imagen: UIImage(named: "arrow")!, precio: 40)
    
    var arco2 = Item(nombre: "Arco1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "arrow2")!, precio: 40)
    
    var arco3 = Item(nombre: "Arco1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "arrow3")!, precio: 40)
    
    var capa1 = Item(nombre: "Capa1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Peto", imagen: UIImage(named: "cap")!, precio: 40)
    
    var capa2 = Item(nombre: "Capa1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Peto", imagen: UIImage(named: "cap2")!, precio: 40)
    
    var capa3 = Item(nombre: "Capa1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Peto", imagen: UIImage(named: "cap3")!, precio: 40)
    
    var cetro1 = Item(nombre: "Cetro1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter")!, precio: 40)
    
    var cetro2 = Item(nombre: "Cetro1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter2")!, precio: 40)
    
    var cetro3 = Item(nombre: "Cetro1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter3")!, precio: 40)
    
    var pocion1 = Item(nombre: "Pocion1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "potion")!, precio: 40)
    
    var pocion2 = Item(nombre: "Pocion1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "potion2")!, precio: 40)
    
    @IBAction func btnSpike(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            let spike = Heroe(nombre: "Spike", dinero: 100, ataque: 4, defensa: 5, magia: 0, suerte: 6, exp: 10, vidas: 4, imagen: UIImage(named: "heroe1")!, equipo: Stuff(stuff: [ "Casco" : casco1, "Peto" : peto1, "Botas" : botas1, "Espada" : espada1, "Mano" : escudo1, "Anillo" : anillo1 ]))
            
            thehero = spike
            
        case 1:
            let hawk = Heroe(nombre: "Hawk", dinero: 100, ataque: 1, defensa: 2, magia: 5, suerte: 6, exp: 10, vidas: 3, imagen: UIImage(named: "heroe3")!, equipo: Stuff(stuff: [ "Casco" : casco2, "Peto" : peto2, "Botas" : botas2, "Espada" : espada2, "Mano" : escudo2, "Anillo" : anillo2 ]))
            
            thehero = hawk
            
        case 2:
            let rei = Heroe(nombre: "Rei", dinero: 100, ataque: 5, defensa: 5, magia: 5, suerte: 5, exp: 10, vidas: 2, imagen: UIImage(named: "heroe4")!, equipo: Stuff(stuff: [ "Casco" : casco1, "Peto" : peto1, "Botas" : botas1, "Espada" : espada1, "Mano" : escudo1, "Anillo" : anillo1 ]))
            
            thehero = rei
            
        default:
            print("error seleccion")
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
        listaItems.append(arco)
        listaItems.append(arco2)
        listaItems.append(arco3)
        listaItems.append(capa1)
        listaItems.append(capa2)
        listaItems.append(capa3)
        listaItems.append(cetro1)
        listaItems.append(cetro2)
        listaItems.append(cetro3)
        listaItems.append(pocion1)
        listaItems.append(pocion2)
        

        
    }


}

