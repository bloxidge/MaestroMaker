//
//  MenuItem.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 18/04/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

let menuItemData : [MenuSection] = [
    MenuSection(title: "Learn", items:
        [
            MenuItem(title: "Tutorials", image: #imageLiteral(resourceName: "menu-tutorials"), selectedImage: #imageLiteral(resourceName: "menu-tutorials-sel"))
        ]
    ),
    MenuSection(title: "Practise", items:
        [
            MenuItem(title: "Metronome", image: #imageLiteral(resourceName: "menu-metronome"), selectedImage: #imageLiteral(resourceName: "menu-metronome-sel")),
            MenuItem(title: "Music", image: #imageLiteral(resourceName: "menu-music"), selectedImage: #imageLiteral(resourceName: "menu-music-sel"))
        ]
    )
]

struct MenuSection {
    
    var title : String?
    var items : [MenuItem]?
    
    init(title: String?, items: [MenuItem]?) {
        self.title = title
        self.items = items
    }
}

struct MenuItem {
    
    var title : String?
    var image : UIImage?
    var selectedImage : UIImage?
    
    init(title: String?, image: UIImage?, selectedImage: UIImage?) {
        self.title = title
        self.image = image
    }
}
