//
//  Paises.swift
//  tablaConCeldaSeparada
//
//  Created by user230216 on 2/2/23.
//

import UIKit

class Paises: NSObject {
    var pais:String
    var capital:String
    var poblacion:Int
    var bandera:UIImage!
    
    init(pais: String, capital: String, poblacion: Int, bandera: UIImage!) {
        self.pais = pais
        self.capital = capital
        self.poblacion = poblacion
        self.bandera = bandera
    }

}
