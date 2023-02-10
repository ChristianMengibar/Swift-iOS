//
//  Paises.swift
//  ProyectoFinal
//
//  Created by user233823 on 2/9/23.
//

import UIKit

class Paises: NSObject {
    var pais: String
    var capital: String
    var superficie: Int
    
    init(pais: String, capital: String, superficie: Int) {
        self.pais = pais
        self.capital = capital
        self.superficie = superficie
    }
}
