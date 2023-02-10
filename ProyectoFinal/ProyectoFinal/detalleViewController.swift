//
//  detalleViewController.swift
//  ProyectoFinal
//
//  Created by user233823 on 2/9/23.
//

import UIKit

class detalleViewController: UIViewController {

    @IBOutlet weak var miImagen: UIImageView!
    @IBOutlet weak var miNoticia: UILabel!
    
    var noticia: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        miNoticia.text = noticia
    }
}
