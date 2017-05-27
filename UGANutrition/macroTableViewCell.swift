//
//  macroTableViewCell.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 5/25/17.
//  Copyright © 2017 Lakshay Sharma. All rights reserved.
//

import UIKit

class macroTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var value: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
