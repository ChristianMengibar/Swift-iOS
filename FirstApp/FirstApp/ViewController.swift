//
//  ViewController.swift
//  FirstApp
//
//  Created by user233823 on 1/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTextButton(_ sender: UIButton) {
        nameLabel.text = "Hola Mundo";
    }
    
}
