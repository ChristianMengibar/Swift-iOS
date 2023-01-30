//
//  ViewController.swift
//  SecondApp
//
//  Created by user233823 on 1/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func greetButton(_ sender: UIButton) {
        nameLabel.text = "Buenos dias " + nameTextField.text!
    }
}
