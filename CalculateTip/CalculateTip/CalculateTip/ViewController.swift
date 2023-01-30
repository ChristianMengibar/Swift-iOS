//
//  ViewController.swift
//  CalculateTip
//
//  Created by user233823 on 1/27/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tenPercentTextField: UITextField!
    @IBOutlet weak var fifteenPercentTextField: UITextField!
    @IBOutlet weak var twentyPercentTextField: UITextField!
    @IBOutlet weak var billTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTipButton(_ sender: UIButton) {
        if billTextField.text == "" {
            
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Enter an amount.", preferredStyle: UIAlertController.Style.alert)

            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        } else{
            
            let importe = Double(billTextField.text!)
            
            let propina1 = importe! * 0.1
            tenPercentTextField.text = String(format: "$%.2f", propina1)
            
            let propina2 = importe! * 0.15
            fifteenPercentTextField.text = String(format: "$%.2f", propina2)
            
            let propina3 = importe! * 0.20
            twentyPercentTextField.text = String(format: "$%.2f", propina3)
        }
    }
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
