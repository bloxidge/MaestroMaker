//
//  PieceCell.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 23/05/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

class PieceCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var composerLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var artworkView: UIImageView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    var piece : Piece! {
        didSet {
            if let artworkImage = piece.artwork {
                artworkView.image = artworkImage
            }
            titleLabel.text = piece.title
            composerLabel.text = piece.composer
            durationLabel.text = piece.durationString
        }
    }
    private var isLoading : Bool = false {
        didSet {
            if isLoading {
                loadingIndicator.startAnimating()
            } else {
                loadingIndicator.stopAnimating()
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        // Configure the view for the highlighted state
        isLoading = highlighted
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        isLoading = selected
    }

}
