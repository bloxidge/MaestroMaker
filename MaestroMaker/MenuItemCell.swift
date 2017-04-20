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
    
    private var backgroundImageView = UIImageView()
    
    var menuItem : MenuItem! {
        didSet {
            titleLabel.text = menuItem.title
            backgroundImageView.image = menuItem.image
            backgroundImageView.highlightedImage = menuItem.highlightImage
            backgroundView = backgroundImageView
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
        backgroundImageView.isHighlighted = selected
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        // Configure the view for the highlighted state
        backgroundImageView.isHighlighted = highlighted
    }

}
