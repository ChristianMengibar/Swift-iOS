//
//  ViewController.swift
//  Alerts
//
//  Created by user233823 on 2/6/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    /*let alert = UIAlertController(title: "REGISTRO", message: "Cuerpo de la alerta", preferredStyle: .alert)
    
    let enviar = UIAlertAction(title: "Enviar", style: .default) { _ in
        print("OK")
    }
    
    let cancelar = UIAlertAction(title: "Cancelar", style: .destructive) { _ in
        print("Cancelar")
    }
    
    alert.addTextField{
        (textField: UITextField) in
        textField.keyboardAppearance = .dark
        textField.keyboardType = .default
        textField.autocorrectionType = .default
        textField.placeholder = "Inserte nombre de usuario"
        textField.clearButtonMode = .whileEditing
        textField.textAlignment = .center
    }
    
    alert.addTextField{
        (textField: UITextField) in
        textField.keyboardAppearance = .dark
        textField.keyboardType = .default
        textField.autocorrectionType = .default
        textField.placeholder = "Inserte contraseña"
        textField.clearButtonMode = .whileEditing
        textField.textAlignment = .center
    }
    
    alert.addAction(enviar)
    alert.addAction(cancelar)
    present(alert, animated: true)*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionButton11(_ sender: Any) {
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
        
        present(alert, animated: true)
    }
    
    
    @IBAction func actionButton2(_ sender: Any) {
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
        
        let enviar = UIAlertAction(title: "Ok esta perfecto", style: .default) { _ in
            print("OK")
        }
        
        alert.addAction(enviar)
        present(alert, animated: true)
    }
    
    
    @IBAction func actionButton3(_ sender: Any) {
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
        
        let enviar = UIAlertAction(title: "Ok personal", style: .default) { _ in
            print("OK")
        }
        
        let cancelar = UIAlertAction(title: "Cancel personal", style: .cancel) { _ in
            print("Cancel personal")
        }
        
        alert.addAction(cancelar)
        alert.addAction(enviar)
        present(alert, animated: true)
    }
    
    
    @IBAction func actionButton4(_ sender: Any) {
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
        
        let enviar = UIAlertAction(title: "Ok personal", style: .default) { _ in
            print("OK")
        }
        
        let cancelar = UIAlertAction(title: "Cancel personal", style: .default) { _ in
            print("Cancel personal")
        }
        
        alert.addAction(cancelar)
        alert.addAction(enviar)
        present(alert, animated: true)
    }
    
    
    @IBAction func actionButton5(_ sender: Any) {
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
        
        let enviar = UIAlertAction(title: "Ok personal", style: .default) { _ in
            print("OK")
        }
        
        let cancelar = UIAlertAction(title: "Cancel personal", style: .destructive) { _ in
            print("Cancel personal")
        }
        
        alert.addAction(cancelar)
        alert.addAction(enviar)
        present(alert, animated: true)
    }
    
    
    @IBAction func actionButton6(_ sender: Any) {
        let alert = UIAlertController(title: "Titulo de la Alerta", message: "Introduzca su nombre", preferredStyle: .alert)
        
        let enviar = UIAlertAction(title: "Enviar", style: .default) { _ in
            print("OK")
        }
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive) { _ in
            print("Cancelar")
        }
        
        alert.addTextField{
            (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Inserte usuario, contraseña"
            textField.clearButtonMode = .whileEditing
            textField.textAlignment = .center
        }
        
        alert.addAction(enviar)
        alert.addAction(cancelar)
        present(alert, animated: true)
    }
    
    @IBAction func actionButton7(_ sender: Any) {
        let alert = UIAlertController(title: "Ejemplo de Registro", message: "Inserte usuario, contraseña", preferredStyle: .alert)
        
        let enviar = UIAlertAction(title: "Enviar", style: .default) { _ in
            print("OK")
        }
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive) { _ in
            print("Cancelar")
        }
        
        alert.addTextField{
            (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Inserte nombre de usuario"
            textField.clearButtonMode = .whileEditing
            textField.textAlignment = .center
        }
        
        alert.addTextField{
            (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Inserte email"
            textField.clearButtonMode = .whileEditing
            textField.textAlignment = .center
        }
        
        alert.addTextField{
            (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Inserte contraseña"
            textField.clearButtonMode = .whileEditing
            textField.textAlignment = .center
        }
        
        alert.addAction(enviar)
        alert.addAction(cancelar)
        present(alert, animated: true)
    }
    
    
    @IBAction func actionButton8(_ sender: Any) {
        let alert = UIAlertController(title: "3 Botones", message: "Elija una opcion", preferredStyle: .alert)
        
        let boton1 = UIAlertAction(title: "Boton 1", style: .default) { _ in
            print("Boton 1")
        }
        
        let boton2 = UIAlertAction(title: "Boton 2", style: .default) { _ in
            print("Boton 2")
        }
        
        let boton3 = UIAlertAction(title: "Boton 3", style: .default) { _ in
            print("Boton 3")
        }
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive) { _ in
            print("Cancelar")
        }
        
        alert.addAction(boton1)
        alert.addAction(boton2)
        alert.addAction(boton3)
        alert.addAction(cancelar)
        present(alert, animated: true)
    }
}
