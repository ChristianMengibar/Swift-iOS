//
//  miTableViewCell.swift
//  tablaConCeldaSeparada
//
//  Created by user230216 on 2/2/23.
//

import UIKit

class miTableViewCell: UITableViewCell {

    @IBOutlet weak var pais: UILabel!
    
    @IBOutlet weak var capital: UILabel!
    

    @IBOutlet weak var bandera: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
