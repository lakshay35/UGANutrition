//
//  CategoryTableViewCell.swift
//  UGANutrition
//
//  Created by Lakshay Sharma on 10/20/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
  
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var picture: UIImageView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
