//
//  LoginTableViewCell.swift
//  TWU
//
//  Created by ATran.dev on 6/26/17.
//  Copyright © 2017 ATGroup. All rights reserved.
//

import UIKit

class LoginTableViewCell: UITableViewCell {


    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
