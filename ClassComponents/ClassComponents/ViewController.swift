//
//  ViewController.swift
//  ClassComponents
//
//  Created by user233823 on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    let daysWeek = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes"]
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myPageControl.numberOfPages = daysWeek.count
        
        //Eliminar el First y Second por defecto.
        mySegmentedControl.removeAllSegments()
        //index = posicion
        for (index, value) in daysWeek.enumerated(){
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }
    }
    
    @IBAction func myButton(_ sender: UIButton) {
        myTextField.backgroundColor = .red
    }
    
    @IBAction func myPageControlAct(_ sender: UIPageControl) {
        //myLabel.text = String(myPageControl.currentPage)
        myLabel.text = daysWeek[myPageControl.currentPage]
    }
    
    @IBAction func mySegmentedControlAct(_ sender: Any) {
        myLabel.text = daysWeek[mySegmentedControl.selectedSegmentIndex]
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return daysWeek.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return daysWeek[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myLabel.text = daysWeek[row]
        myButton.setTitle(daysWeek[row], for: .normal)
        myTextField.text = daysWeek[row]
    }
}
