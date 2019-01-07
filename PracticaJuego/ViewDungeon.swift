

import UIKit

var monster:Monstruo?
var listaMonstruos = [Monstruo]()
class ViewDungeon: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var monster1 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    var monster2 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    var monster3 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    var monster4 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    var monster5 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    var monster6 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    var monster7 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    var monster8 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    var monster9 = Monstruo(nombre: "Monster1", ataque: 10, oro: 20, exp: 10, vida: 3, imagen: UIImage(named: "monster1")!)
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaMonstruos.append(monster1)
        listaMonstruos.append(monster2)
        listaMonstruos.append(monster3)
        listaMonstruos.append(monster4)
        listaMonstruos.append(monster5)
        listaMonstruos.append(monster6)
        listaMonstruos.append(monster7)
        listaMonstruos.append(monster8)
        listaMonstruos.append(monster9)

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        monster = listaMonstruos[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listaMonstruos.count
        
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100.0
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let myView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        let myImageView:UIImageView = UIImageView(frame: CGRect(x: -100, y: 0, width: 100, height: 100))
        
        let imagen:UIImage = listaMonstruos[row].imagen!
        
        myImageView.image = imagen
        
        myView.addSubview(myImageView)
        
        let mnombre:UILabel = UILabel(frame: CGRect(x: 20, y: -25, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let mataque:UILabel = UILabel(frame: CGRect(x: 20, y: -7, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let mexp:UILabel = UILabel(frame: CGRect(x: 20, y: 10, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        let mdinero:UILabel = UILabel(frame: CGRect(x: 20, y: 27, width: pickerView.rowSize(forComponent: 0).width, height: 100))
        
        mnombre.textColor = UIColor.white
        mnombre.font = UIFont(name: "Verdana", size: 15)
        mnombre.text = "Nombre:" + listaMonstruos[row].nombre
        
        mataque.textColor = UIColor.white
        mataque.font = UIFont(name: "Verdana", size: 15)
        mataque.text = "Ataque:" + String(listaMonstruos[row].ataque)
        
        mexp.textColor = UIColor.white
        mexp.font = UIFont(name: "Verdana", size: 15)
        mexp.text = "Exp:" + String(listaMonstruos[row].exp)
        
        mdinero.textColor = UIColor.white
        mdinero.font = UIFont(name: "Verdana", size: 15)
        mdinero.text = "Oro:" + String(listaMonstruos[row].oro)
        
        myView.addSubview(mnombre)
        myView.addSubview(mataque)
        myView.addSubview(mexp)
        myView.addSubview(mdinero)
        
        return myView
        
    }

}
