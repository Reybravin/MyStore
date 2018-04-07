//
//  CategoryGoodsCell.swift
//  MyStore
//
//  Created by Sergiy Sachuk on 4/7/18.
//  Copyright © 2018 Sergiy Sachuk. All rights reserved.
//

import UIKit

class CategoryProductsCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitleLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    var product = Product()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
