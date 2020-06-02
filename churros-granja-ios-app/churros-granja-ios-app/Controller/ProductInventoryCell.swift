//
//  ProductInventoryCell.swift
//  churros-granja-ios-app
//
//  Created by Ricardo Granja on 31/05/20.
//  Copyright © 2020 Ricardo Granja. All rights reserved.
//

import UIKit

class ProductInventoryCell: UITableViewCell {

    @IBOutlet weak var imageProductInventory: UIImageView!
    @IBOutlet weak var nameProductInventory: UILabel!
    @IBOutlet weak var existenceProductInventory: UILabel!
    @IBOutlet weak var dateProductInventory: UILabel!
    static let nameCell: String = "ProductInventoryCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
