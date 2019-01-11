//
//  ViewControllerShop.swift
//  PracticaJuego
//
//  Created by dmorenoar on 31/12/2018.
//  Copyright © 2018 Miquel. All rights reserved.
//

import UIKit

class ViewControllerShop: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var item:Item?
    let dinero:Int = (thehero?.dinero)!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        money.text = String(dinero)
    }
    
    @IBOutlet weak var money: UILabel!
    
    @IBOutlet weak var informa: UILabel!
    
    @IBOutlet weak var pickershop: UIPickerView!

    @IBAction func btnBUY(_ sender: UIButton) {
        
        if thehero!.dinero >= item!.precio {
        
        switch item?.tipo {
        case "Casco":
            thehero?.equipo?.stuff[ "Casco" ] = item
            break;
        case "Peto":
            thehero?.equipo?.stuff[ "Peto" ] = item
            break;
        case "Botas":
            thehero?.equipo?.stuff[ "Botas" ] = item
            break;
        case "Espada":
            thehero?.equipo?.stuff[ "Espada" ] = item
            break;
        case "Mano":
            thehero?.equipo?.stuff[ "Mano" ] = item
            break;
        case "Anillo":
            thehero?.equipo?.stuff[ "Anillo" ] = item
            break;
        default:
            print("error")
        }
        thehero?.dinero = (thehero?.dinero)! - (item?.precio)!
        let ddinero:Int = (thehero?.dinero)!
        informa.isHidden = false
        informa.text = "Item comprado."
        money.text = String(ddinero)
        sumaEstadisticas(heroe: thehero!)
            
        } else {
            informa.isHidden = false
            informa.text = "No tiene suficiente dinero."
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        item = listaItems[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listaItems.count
    
        
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100.0
    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        let myImageView:UIImageView = UIImageView(frame: CGRect(x: -100, y: 0, width: 100, height: 100))

        let imagen:UIImage = listaItems[row].imagen!

        myImageView.image = imagen
        
        myView.addSubview(myImageView)
        
        let lataque:UILabel = UILabel(frame: CGRect(x: 20, y: -25, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let ldefensa:UILabel = UILabel(frame: CGRect(x: 20, y: -7, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let lmagia:UILabel = UILabel(frame: CGRect(x: 20, y: 10, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let lsuerte:UILabel = UILabel(frame: CGRect(x: 20, y: 27, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let lprecio:UILabel = UILabel(frame: CGRect(x: 130, y: 0, width: pickerView.rowSize(forComponent: 0).width, height: 100))

        lataque.textColor = UIColor.white
        lataque.font = UIFont(name: "Verdana", size: 15)
        lataque.text = "Ataque:" + String(listaItems[row].ataque)
        
        ldefensa.textColor = UIColor.white
        ldefensa.font = UIFont(name: "Verdana", size: 15)
        ldefensa.text = "Defensa:" + String(listaItems[row].defensa)
        
        lmagia.textColor = UIColor.white
        lmagia.font = UIFont(name: "Verdana", size: 15)
        lmagia.text = "Magia:" + String(listaItems[row].magia)
        
        lsuerte.textColor = UIColor.white
        lsuerte.font = UIFont(name: "Verdana", size: 15)
        lsuerte.text = "Suerte:" + String(listaItems[row].suerte)
        
        lprecio.textColor = UIColor.white
        lprecio.font = UIFont(name: "Verdana", size: 15)
        lprecio.text = "Precio:" + String(listaItems[row].precio)
        
        myView.addSubview(lataque)
        myView.addSubview(ldefensa)
        myView.addSubview(lmagia)
        myView.addSubview(lsuerte)
        myView.addSubview(lprecio)
        
        return myView
        
    }
    
}
