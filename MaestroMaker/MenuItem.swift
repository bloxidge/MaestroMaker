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
            MenuItem(title: "Tutorials", image: #imageLiteral(resourceName: "wp1"))
        ]
    ),
    MenuSection(title: "Practise", items:
        [
            MenuItem(title: "Metronome", image: #imageLiteral(resourceName: "wp2")),
            MenuItem(title: "Music", image: #imageLiteral(resourceName: "wp3"))
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
    
    init(title: String?, image: UIImage?) {
        self.title = title
        self.image = image
    }
}
