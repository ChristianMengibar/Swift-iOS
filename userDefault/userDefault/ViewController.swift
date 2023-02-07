//
//  ViewController.swift
//  userDefault
//
//  Created by user233823 on 2/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nombreLabel: UITextField!
    
    private let kMiClave: String = "MI_NOMBRE"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func guardarButton(_ sender: Any) {
        if nombreLabel.text != "" {
            UserDefaults.standard.set(nombreLabel.text, forKey: kMiClave)
            UserDefaults.standard.synchronize()
            alerta(mensaje: "Hemos guardado el nombre.")
        } else {
            alerta(mensaje: "Debe introducir nombre.")
        }
    }
    
    @IBAction func recuperarButton(_ sender: Any) {
        if let valor = UserDefaults.standard.string(forKey: kMiClave){
            alerta(mensaje: "El nombre recuperado es: \(valor)")
        } else {
            alerta(mensaje: "No hay ningun dato guardado")
        }
    }
    
    @IBAction func borrarButton(_ sender: Any) {
        /*Estamos en el almacen*/
        UserDefaults.standard.removeObject(forKey: kMiClave)
        /*Lo sincronizamos*/
        UserDefaults.standard.synchronize()
        alerta(mensaje: "Hemos borrado el elemento guardado")
    }
    
    private func alerta(mensaje:String){
        let alerta = UIAlertController(title: "User Default", message: mensaje, preferredStyle: .alert)
        
        let accion = UIAlertAction(title: "Ok", style: .default)
        alerta.addAction(accion)
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        alerta.addAction(cancelar)
        present(alerta, animated: true)
    }
}
