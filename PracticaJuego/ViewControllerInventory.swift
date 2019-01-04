//
//  ViewControllerInventory.swift
//  PracticaJuego
//
//  Created by Miquel on 5/12/18.
//  Copyright © 2018 Miquel. All rights reserved.
//

import UIKit

class ViewControllerInventory: UIViewController {

    
   

    @IBOutlet weak var arma: UIImageView!
    
    @IBOutlet weak var casco: UIImageView!
    
    @IBOutlet weak var peto: UIImageView!
    
    @IBOutlet weak var botas: UIImageView!
    
    @IBOutlet weak var escudo: UIImageView!
    
    @IBOutlet weak var anillo: UIImageView!
    
    @IBOutlet weak var atq: UILabel!
    
    @IBOutlet weak var def: UILabel!
    
    @IBOutlet weak var lck: UILabel!
    
    @IBOutlet weak var mag: UILabel!
    
    @IBOutlet weak var money: UILabel!
    
    @IBOutlet weak var exp: UILabel!
    
    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet var vidas: [UIImageView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let ataque:Int = (thehero?.ataque)!
        let defensa:Int = (thehero?.defensa)!
        let suerte:Int = (thehero?.suerte)!
        let magia:Int = (thehero?.magia)!
        let dinero:Int = (thehero?.dinero)!
        let experiencia:Int = (thehero?.exp)!
        
        arma.image = thehero?.equipo?.stuff["Arma"]?.imagen
        casco.image = thehero?.equipo?.stuff["Casco"]?.imagen
        peto.image = thehero?.equipo?.stuff["Peto"]?.imagen
        botas.image = thehero?.equipo?.stuff["Botas"]?.imagen
        escudo.image = thehero?.equipo?.stuff["Mano"]?.imagen
        anillo.image = thehero?.equipo?.stuff["Anillo"]?.imagen
        
        atq.text = String(ataque)
        def.text = String(defensa)
        mag.text = String(magia)
        lck.text = String(suerte)
        money.text = String(dinero)
        exp.text = String(experiencia)
        nombre.text = thehero?.nombre
        
        switch thehero?.vidas {
        case 1:
            vidas[0].isHidden = false
            break;
        case 2:
            vidas[0].isHidden = false
            vidas[1].isHidden = false
            break;
        case 3:
            vidas[0].isHidden = false
            vidas[1].isHidden = false
            vidas[2].isHidden = false
            break;
        case 4:
            vidas[0].isHidden = false
            vidas[1].isHidden = false
            vidas[2].isHidden = false
            vidas[3].isHidden = false
            break;
        default:
            print("nada")
        }
        
    }
    


}
