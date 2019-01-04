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
        default:
            print("error")
        }
        thehero?.dinero = (thehero?.dinero)! - (item?.precio)!
        var ddinero:Int = (thehero?.dinero)!
        informa.isHidden = false
        informa.text = "Item comprado."
        money.text = String(ddinero)
            
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
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        //Creamos nuestra VIEW Contendor
        let myView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        //Creamos nuestro contenedor de imagen
        let myImageView:UIImageView = UIImageView(frame: CGRect(x: -100, y: 0, width: 100, height: 100))
        //Creamos nuestra imagen
        let imagen:UIImage = listaItems[row].imagen!
        //Asignamos la imagen al contendor de la vista
        myImageView.image = imagen
        
        myView.addSubview(myImageView)
        
        //Creamos nuestra label
        let lataque:UILabel = UILabel(frame: CGRect(x: 20, y: 0, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let ldefensa:UILabel = UILabel(frame: CGRect(x: 20, y: 100, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        //Asignamos propiedades a nuestra label
        lataque.textColor = UIColor.black
        lataque.font = UIFont(name: "Verdana", size: 26)
        lataque.text = String(listaItems[row].ataque)
        //
        ldefensa.textColor = UIColor.black
        ldefensa.font = UIFont(name: "Verdana", size: 26)
        ldefensa.text = String(listaItems[row].defensa)
        
        myView.addSubview(lataque)
        myView.addSubview(ldefensa)
        
        return myView
        
    }
    
}
