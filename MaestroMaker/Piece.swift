//
//  Piece.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 22/05/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

struct Piece {
    
    var title : String
    var composer : String
    var duration : TimeInterval
    var tempo : Int
    var artwork : UIImage?
    
    init(_ title: String, _ composer: String, duration: TimeInterval, tempo: Int) {
        self.title = title
        self.composer = composer
        self.duration = duration
        self.tempo = tempo
    }
    
    init(_ title: String, _ composer: String, duration: TimeInterval, tempo: Int, _ artwork: UIImage) {
        self.title = title
        self.composer = composer
        self.duration = duration
        self.tempo = tempo
        self.artwork = artwork
    }
}
