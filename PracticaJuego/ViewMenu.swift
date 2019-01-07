//
//  ViewMenu.swift
//  PracticaJuego
//
//  Created by dmorenoar on 04/01/2019.
//  Copyright © 2019 Miquel. All rights reserved.
//

import UIKit

class ViewMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       //(thehero?.ataque)! +
        
        thehero?.ataque =
        (thehero?.equipo?.stuff[ "Casco" ]?.ataque)! + (thehero?.equipo?.stuff[ "Espada" ]?.ataque)! +
        (thehero?.equipo?.stuff[ "Peto" ]?.ataque)! +
        (thehero?.equipo?.stuff[ "Botas" ]?.ataque)! +
        (thehero?.equipo?.stuff[ "Anillo" ]?.ataque)! +
        (thehero?.equipo?.stuff[ "Mano" ]?.ataque)!
        
        thehero?.defensa =
        (thehero?.equipo?.stuff[ "Casco" ]?.defensa)! + (thehero?.equipo?.stuff[ "Espada" ]?.defensa)! +
            (thehero?.equipo?.stuff[ "Peto" ]?.defensa)! +
            (thehero?.equipo?.stuff[ "Botas" ]?.defensa)! +
            (thehero?.equipo?.stuff[ "Anillo" ]?.defensa)! +
            (thehero?.equipo?.stuff[ "Mano" ]?.defensa)!
        
        thehero?.magia =
            (thehero?.equipo?.stuff[ "Casco" ]?.magia)! + (thehero?.equipo?.stuff[ "Espada" ]?.magia)! +
            (thehero?.equipo?.stuff[ "Peto" ]?.magia)! +
            (thehero?.equipo?.stuff[ "Botas" ]?.magia)! +
            (thehero?.equipo?.stuff[ "Anillo" ]?.magia)! +
            (thehero?.equipo?.stuff[ "Mano" ]?.magia)!
        
        thehero?.suerte =  (thehero?.equipo?.stuff[ "Casco" ]?.suerte)! + (thehero?.equipo?.stuff[ "Espada" ]?.suerte)! +
            (thehero?.equipo?.stuff[ "Peto" ]?.suerte)! +
            (thehero?.equipo?.stuff[ "Botas" ]?.suerte)! +
            (thehero?.equipo?.stuff[ "Anillo" ]?.suerte)! +
            (thehero?.equipo?.stuff[ "Mano" ]?.suerte)!

    }
    

    

}
