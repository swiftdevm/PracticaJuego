//
//  ViewFight.swift
//  PracticaJuego
//
//  Created by dmorenoar on 07/01/2019.
//  Copyright © 2019 Miquel. All rights reserved.
//

import UIKit

class ViewFight: UIViewController {

    
    @IBOutlet weak var imgmonster: UIImageView!
    
    @IBOutlet weak var imghero: UIImageView!
    
    @IBOutlet weak var labelhero: UILabel!
    
    @IBOutlet weak var labelmonster: UILabel!
    
    @IBOutlet var vidasmonster: [UIImageView]!
    
    @IBOutlet var vidashero: [UIImageView]!
    
    var herohit:Int = 0
    var monsterhit:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgmonster.image = monster?.imagen
        imghero.image = thehero?.imagen
        
        labelhero.text = "Tu golpe: \(herohit)"
        labelmonster.text = "Su golpe: \(monsterhit)"
        
        switch thehero?.vidas {
        case 1:
            vidashero[0].isHidden = false
            break;
        case 2:
            vidashero[0].isHidden = false
            vidashero[1].isHidden = false
            break;
        case 3:
            vidashero[0].isHidden = false
            vidashero[1].isHidden = false
            vidashero[2].isHidden = false
            break;
        case 4:
            vidashero[0].isHidden = false
            vidashero[1].isHidden = false
            vidashero[2].isHidden = false
            vidashero[3].isHidden = false
            break;
        default:
            print("nada")
        }
        
        switch monster?.vida {
        case 1:
            vidasmonster[0].isHidden = false
            break;
        case 2:
            vidasmonster[0].isHidden = false
            vidasmonster[1].isHidden = false
            break;
        case 3:
            vidasmonster[0].isHidden = false
            vidasmonster[1].isHidden = false
            vidasmonster[2].isHidden = false
            break;
        case 4:
            vidasmonster[0].isHidden = false
            vidasmonster[1].isHidden = false
            vidasmonster[2].isHidden = false
            vidasmonster[3].isHidden = false
            break;
        default:
            print("nada")
        }
  
    }
    



}
