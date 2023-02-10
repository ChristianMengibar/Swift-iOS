//
//  TableViewControllerPaises.swift
//  ProyectoFinal
//
//  Created by user233823 on 2/9/23.
//

import UIKit

class TableViewControllerPaises: UITableViewController{

    @IBOutlet weak var miTabla: UITableView!
    
    var listaPaises = [Paises(pais: "España", capital: "Madrid", superficie: 505990), Paises(pais: "Portugal", capital: "Lisboa", superficie: 400000), Paises(pais: "Italia", capital: "Roma", superficie: 4589255)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
    }

    @IBAction func actionButton(_ sender: Any) {
        let alert = UIAlertController(title: "Titulo de la alerta", message: "Cuerpo de la alerta", preferredStyle: .alert)
        
        let enviar = UIAlertAction(title: "Enviar", style: .default) { _ in
            self.listaPaises.append(Paises(pais: alert.textFields?[0].text ?? "**", capital: alert.textFields?[1].text ?? "**", superficie: Int(alert.textFields?[2].text ?? "00")!))
            
            self.miTabla.reloadData()
        }
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive) { _ in
            print("Cancelar")
        }
        
        alert.addTextField{
            (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Introduce el pais"
            textField.clearButtonMode = .whileEditing
            textField.textAlignment = .center
        }
        
        alert.addTextField{
            (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Introduce la capital"
            textField.clearButtonMode = .whileEditing
            textField.textAlignment = .center
        }
        
        alert.addTextField{
            (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Introduce la superficie"
            textField.clearButtonMode = .whileEditing
            textField.textAlignment = .center
        }
        
        alert.addAction(enviar)
        alert.addAction(cancelar)
        present(alert, animated: true)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaPaises.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as? miTableViewCell

        cell?.pais.text = listaPaises[indexPath.row].pais
        cell?.capital.text = listaPaises[indexPath.row].capital
        cell?.superficie.text = String(listaPaises[indexPath.row].superficie)
        
        return cell!
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            listaPaises.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the te view
        }
    }
    

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        tableView.moveRow(at: fromIndexPath, to: to)
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
