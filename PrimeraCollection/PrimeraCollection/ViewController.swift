//
//  ViewController.swift
//  PrimeraCollection
//
//  Created by user233823 on 2/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var miCollection: UICollectionView!
    
    let paises = ["España", "Gales", "Uganda", "Portugal", "Holanda", "Inglaterra"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return paises.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! CollectionViewCell
        
        cell.label.text = paises[indexPath.row]
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegate{
    
}
