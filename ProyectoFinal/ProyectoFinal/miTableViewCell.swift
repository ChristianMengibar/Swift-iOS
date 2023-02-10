//
//  miTableViewCell.swift
//  ProyectoFinal
//
//  Created by user233823 on 2/9/23.
//

import UIKit

class miTableViewCell: UITableViewCell {

    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var capital: UILabel!
    @IBOutlet weak var superficie: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
