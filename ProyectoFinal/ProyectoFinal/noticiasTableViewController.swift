//
//  noticiasTableViewController.swift
//  ProyectoFinal
//
//  Created by user233823 on 2/9/23.
//

import UIKit

struct Petition: Codable{
    var title: String
    var body: String
}

struct Peticiones: Codable{
    var results: [Petition]
}

class noticiasTableViewController: UITableViewController{
    
    var peticiones = [Petition]()

  
    @IBOutlet var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        
        if let url = URL(string:urlString){
            if let data = try? Data(contentsOf: url){
                parse(json:data)
            }
        }
        
    }
    func parse(json:Data){
        let decodificador = JSONDecoder()
        
        if let jsonPetitions = try? decodificador.decode(Peticiones.self, from: json){
            peticiones = jsonPetitions.results
            tabla.reloadData()
        }
    }
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return peticiones.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        celda.textLabel?.text = peticiones[indexPath.row].title
        celda.detailTextLabel?.text = peticiones[indexPath.row].body
        return celda
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? detalleViewController{
            let indice = tabla.indexPathForSelectedRow!
            destino.noticia = peticiones[indice.row].body
        }
    }
}
