//
//  MenuItemCell.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 18/04/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

class MenuItemCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var menuItem : MenuItem! {
        didSet {
            titleLabel.text = menuItem.title
            backgroundView = UIImageView(image: menuItem.image)
            selectedBackgroundView = UIImageView(image: menuItem.selectedImage)
            backgroundView?.contentMode = .scaleAspectFill
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
