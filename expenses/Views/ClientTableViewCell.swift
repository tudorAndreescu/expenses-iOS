//
//  ClientTableViewCell.swift
//  expenses
//
//  Created by Danut Pralea on 11/12/2018.
//  Copyright © 2018 TudorAndreescu. All rights reserved.
//

import UIKit

class ClientTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
