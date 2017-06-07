//
//  OptionItemMenuTableViewCell.swift
//  TravelWithUs
//
//  Created by ATran.dev on 5/26/17.
//  Copyright © 2017 ATran.Dev. All rights reserved.
//

import UIKit

class OptionItemMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var optionImages: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
