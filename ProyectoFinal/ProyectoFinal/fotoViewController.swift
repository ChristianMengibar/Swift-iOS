//
//  fotoViewController.swift
//  ProyectoFinal
//
//  Created by user233823 on 2/10/23.
//

import UIKit

class fotoViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var foto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tomarFoto(_ sender: Any) {
        let miImagePicker = UIImagePickerController()
        miImagePicker.allowsEditing = true
        miImagePicker.delegate = self
        miImagePicker.sourceType = .photoLibrary
        
        present(miImagePicker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let miImagen = info[.editedImage] as? UIImage else {return}
        foto.image = miImagen
        
        dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
