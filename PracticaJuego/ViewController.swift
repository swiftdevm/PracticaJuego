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
//METODO PARA SUMAR LAS ESTADISTICAS DE LOS HEROES
func sumaEstadisticas(heroe:Heroe) {
    heroe.ataque =
        (heroe.equipo?.stuff[ "Casco" ]?.ataque)! + (heroe.equipo?.stuff[ "Espada" ]?.ataque)! +
        (heroe.equipo?.stuff[ "Peto" ]?.ataque)! +
        (heroe.equipo?.stuff[ "Botas" ]?.ataque)! +
        (heroe.equipo?.stuff[ "Anillo" ]?.ataque)! +
        (heroe.equipo?.stuff[ "Mano" ]?.ataque)!
    
    heroe.defensa =
        (heroe.equipo?.stuff[ "Casco" ]?.defensa)! + (heroe.equipo?.stuff[ "Espada" ]?.defensa)! +
        (heroe.equipo?.stuff[ "Peto" ]?.defensa)! +
        (heroe.equipo?.stuff[ "Botas" ]?.defensa)! +
        (heroe.equipo?.stuff[ "Anillo" ]?.defensa)! +
        (heroe.equipo?.stuff[ "Mano" ]?.defensa)!
    
    heroe.magia =
        (heroe.equipo?.stuff[ "Casco" ]?.magia)! + (heroe.equipo?.stuff[ "Espada" ]?.magia)! +
        (heroe.equipo?.stuff[ "Peto" ]?.magia)! +
        (heroe.equipo?.stuff[ "Botas" ]?.magia)! +
        (heroe.equipo?.stuff[ "Anillo" ]?.magia)! +
        (heroe.equipo?.stuff[ "Mano" ]?.magia)!
    
    heroe.suerte =  (heroe.equipo?.stuff[ "Casco" ]?.suerte)! + (heroe.equipo?.stuff[ "Espada" ]?.suerte)! +
        (heroe.equipo?.stuff[ "Peto" ]?.suerte)! +
        (heroe.equipo?.stuff[ "Botas" ]?.suerte)! +
        (heroe.equipo?.stuff[ "Anillo" ]?.suerte)! +
        (heroe.equipo?.stuff[ "Mano" ]?.suerte)!
    
}

class ViewController: UIViewController {
    
    //CREACION DE ITEMS
    
    var casco1 = Item(nombre: "Casco1", ataque: 3, defensa: 5, magia: 0, suerte: 0, tipo: "Casco", imagen: UIImage(named: "helmet1")!, precio: 40)
    
    var peto1 = Item(nombre: "Peto1", ataque: 2, defensa: 5, magia: 0, suerte: 0, tipo: "Peto", imagen: UIImage(named: "armour")!, precio: 40)
    
    var botas1 = Item(nombre: "Botas1", ataque: 0, defensa: 5, magia: 0, suerte: 0, tipo: "Botas", imagen: UIImage(named: "boots")!, precio: 35)
    
    var espada1 = Item(nombre: "Espada1", ataque: 4, defensa: 4, magia: 0, suerte: 0, tipo: "Espada", imagen: UIImage(named: "sword1")!, precio: 40)
    
    var escudo1 = Item(nombre: "Escudo1", ataque: 0, defensa: 5, magia: 0, suerte: 4, tipo: "Mano", imagen: UIImage(named: "shield")!, precio: 25)
    
    var anillo1 = Item(nombre: "Anillo1", ataque: 0, defensa: 4, magia: 0, suerte: 5, tipo: "Anillo", imagen: UIImage(named: "ring")!, precio: 40)
    
    var casco2 = Item(nombre: "Casco2", ataque: 0, defensa: 2, magia: 3, suerte: 2, tipo: "Casco", imagen: UIImage(named: "helmet2")!, precio: 50)
    
    var peto2 = Item(nombre: "Peto2", ataque: 3, defensa: 3, magia: 0, suerte: 1, tipo: "Peto", imagen: UIImage(named: "armour2")!, precio: 40)
    
    var botas2 = Item(nombre: "Botas2", ataque: 4, defensa: 1, magia: 0, suerte: 3, tipo: "Botas", imagen: UIImage(named: "boots2")!, precio: 40)
    
    var espada2 = Item(nombre: "Espada2", ataque: 6, defensa: 5, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter")!, precio: 25)
    
    var escudo2 = Item(nombre: "Escudo2", ataque: 0, defensa: 5, magia: 0, suerte: 1, tipo: "Mano", imagen: UIImage(named: "shield2")!, precio: 40)
    
    var anillo2 = Item(nombre: "Anillo2", ataque: 2, defensa: 0, magia: 5, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "ring2")!, precio: 40)
    
    var casco4 = Item(nombre: "Casco4", ataque: 2, defensa: 5, magia: 0, suerte: 1, tipo: "Casco", imagen: UIImage(named: "helmet4")!, precio: 50)
    
    var peto3 = Item(nombre: "Peto3", ataque: 3, defensa: 3, magia: 1, suerte: 0, tipo: "Peto", imagen: UIImage(named: "armour3")!, precio: 45)
    
    var casco5 = Item(nombre: "Casco5", ataque: 1, defensa: 5, magia: 1, suerte: 1, tipo: "Casco", imagen: UIImage(named: "helmet5")!, precio: 40)
    
    var espada4 = Item(nombre: "Espada4", ataque: 4, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "sword4")!, precio: 50)
    
    var escudo3 = Item(nombre: "Escudo3", ataque: 0, defensa: 5, magia: 0, suerte: 3, tipo: "Mano", imagen: UIImage(named: "shield3")!, precio: 40)
    
    var escudo4 = Item(nombre: "Escudo4", ataque: 0, defensa: 4, magia: 0, suerte: 5, tipo: "Mano", imagen: UIImage(named: "shield4")!, precio: 40)
    
    var arco = Item(nombre: "Arco1", ataque: 5, defensa: 0, magia: 2, suerte: 3, tipo: "Espada", imagen: UIImage(named: "arrow")!, precio: 40)
    
    var arco2 = Item(nombre: "Arco1", ataque: 6, defensa: 0, magia: 0, suerte: 5, tipo: "Espada", imagen: UIImage(named: "arrow2")!, precio: 50)
    
    var arco3 = Item(nombre: "Arco1", ataque: 10, defensa: 0, magia: 2, suerte: 3, tipo: "Espada", imagen: UIImage(named: "arrow3")!, precio: 70)
    
    var capa1 = Item(nombre: "Capa1", ataque: 0, defensa: 2, magia: 5, suerte: 3, tipo: "Peto", imagen: UIImage(named: "cap")!, precio: 40)
    
    var capa2 = Item(nombre: "Capa1", ataque: 1, defensa: 4, magia: 0, suerte: 3, tipo: "Peto", imagen: UIImage(named: "cap2")!, precio: 40)
    
    var capa3 = Item(nombre: "Capa1", ataque: 0, defensa: 4, magia: 7, suerte: 3, tipo: "Peto", imagen: UIImage(named: "cap3")!, precio: 60)
    
    var cetro1 = Item(nombre: "Cetro1", ataque: 2, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter")!, precio: 30)
    
    var cetro2 = Item(nombre: "Cetro1", ataque: 5, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter2")!, precio: 40)
    
    var cetro3 = Item(nombre: "Cetro1", ataque: 6, defensa: 4, magia: 0, suerte: 3, tipo: "Espada", imagen: UIImage(named: "scepter3")!, precio: 50)
    
    var pocion1 = Item(nombre: "Pocion1", ataque: 0, defensa: 4, magia: 0, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "potion")!, precio: 40)
    
    var pocion2 = Item(nombre: "Pocion1", ataque: 0, defensa: 6, magia: 0, suerte: 3, tipo: "Anillo", imagen: UIImage(named: "potion2")!, precio: 50)
    
    //CREACION DE HEROES
    @IBAction func btnSpike(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            let spike = Heroe(nombre: "Spike", dinero: 100, exp: 10, vidas: 4, imagen: UIImage(named: "heroe1")!, equipo: Stuff(stuff: [ "Casco" : casco1, "Peto" : peto1, "Botas" : botas1, "Espada" : espada1, "Mano" : escudo1, "Anillo" : anillo1 ]))
                sumaEstadisticas(heroe: spike)
            
            thehero = spike
            
        case 1:
            let hawk = Heroe(nombre: "Hawk", dinero: 100, exp: 10, vidas: 3, imagen: UIImage(named: "heroe3")!, equipo: Stuff(stuff: [ "Casco" : casco2, "Peto" : peto2, "Botas" : botas2, "Espada" : espada2, "Mano" : escudo2, "Anillo" : anillo2 ]))
                sumaEstadisticas(heroe: hawk)
            
            thehero = hawk
            
        case 2:
            let rei = Heroe(nombre: "Rei", dinero: 100, exp: 10, vidas: 2, imagen: UIImage(named: "heroe4")!, equipo: Stuff(stuff: [ "Casco" : casco4, "Peto" : peto3, "Botas" : botas2, "Espada" : arco, "Mano" : escudo3, "Anillo" : pocion1 ]))
                sumaEstadisticas(heroe: rei)
            
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

