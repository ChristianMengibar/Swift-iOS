//
//  AnotacionPin.swift
//  ProyectoFinal
//
//  Created by user233823 on 2/10/23.
//

import UIKit
import MapKit

class AnotacionPin: NSObject, MKAnnotation {
    var titulo: String
    var subtitulo: String
    var coordinate: CLLocationCoordinate2D
    var imagen: UIImage!
    
    init(titulo: String, subtitulo: String, coordinate: CLLocationCoordinate2D, imagen: UIImage!) {
        self.titulo = titulo
        self.subtitulo = subtitulo
        self.coordinate = coordinate
        self.imagen = imagen
    }
}
