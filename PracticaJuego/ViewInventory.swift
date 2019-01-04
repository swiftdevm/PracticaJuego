//
//  ViewInventory.swift
//  PracticaJuego
//
//  Created by Miquel on 28/11/18.
//  Copyright © 2018 Miquel. All rights reserved.
//

import UIKit

class ViewInventory: UIView {


    @IBOutlet weak var casco: UIImageView!
    
    @IBOutlet weak var anillo: UIImageView!

    @IBOutlet weak var botas: UIImageView!
    
    @IBOutlet weak var peto: UIImageView!
    
    @IBOutlet weak var arma: UIImageView!
    
    @IBOutlet weak var secundaria: UIImageView!
    
    @IBOutlet weak var imagen: UIImageView!
    
    func convertirInventory(){
        imagen.image = thehero?.imagen
        
    }
    
}
