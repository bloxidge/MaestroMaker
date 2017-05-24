//
//  Piece.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 22/05/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

let pieceList : [Piece] = [
    Piece("Promenade (Walking the Dog)", composer: "George Gershwin", genre: .jazz, duration: 173, startTempo: 122),
    Piece("Appalachian Overture", composer: "James Barnes", genre: .wind, duration: 431, startTempo: 134),
    Piece("Sleigh Ride", composer: "Leroy Anderson", genre: .seasonal, duration: 170, startTempo: 120),
    Piece("How to Train Your Dragon", composer: "John Powell", genre: .film, duration: 294, startTempo: 75),
    Piece("Crown Imperial", composer: "William Walton", genre: .classical, duration: 609, startTempo: 100),
    Piece("Omens of Love", composer: "Hirotaka Izumi", genre: .pop, duration: 265, startTempo: 160),
    Piece("Forrest Gump Suite", composer: "Alan Silvestri", genre: .film, duration: 380, startTempo: 105),
    Piece("Chicken Run (Main Titles)", composer: "John Powell", genre: .film, duration: 178, startTempo: 120)
]

struct Piece {
    
    var title : String
    var composer : String
    var genre : Genre
    var duration : Int
    var tempo : Int
    var artwork : UIImage?
    
    var durationString : String {
        return String(format: "%d:%02d", duration / 60, duration % 60)
    }
    
    init(_ title: String, composer: String, genre: Genre, duration: Int, startTempo: Int) {
        self.title = title
        self.composer = composer
        self.genre = genre
        self.duration = duration
        self.tempo = startTempo
    }
    
    init(_ title: String, composer: String, genre: Genre, duration: Int, startTempo: Int, _ artwork: UIImage) {
        self.title = title
        self.composer = composer
        self.genre = genre
        self.duration = duration
        self.tempo = startTempo
        self.artwork = artwork
    }
    
    enum Genre: String {
        case classical = "Classical"
        case wind = "Wind Band"
        case film = "Film & Television"
        case theatre = "Theatre"
        case seasonal = "Seasonal"
        case jazz = "Orchestral Jazz"
        case pop = "Pop Arrangement"
    }
}
