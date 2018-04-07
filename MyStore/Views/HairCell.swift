//
//  HairCell.swift
//  MyStore
//
//  Created by Sergiy Sachuk on 4/7/18.
//  Copyright © 2018 Sergiy Sachuk. All rights reserved.
//

import UIKit

class HairCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
