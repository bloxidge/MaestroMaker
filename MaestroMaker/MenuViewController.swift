//
//  MenuViewController.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 18/04/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    private var titleImage : UIImage! {
        didSet {
            let titleImageView = UIImageView(image: titleImage)
            titleImageView.contentMode = .scaleAspectFit
            titleImageView.frame = CGRect(x: 0, y: 0, width: 40, height: 32)
            navigationItem.titleView = titleImageView
        }
    }
    
    @IBOutlet var tutorialsCell: MenuItemCell!
    @IBOutlet var metronomeCell: MenuItemCell!
    @IBOutlet var musicCell: MenuItemCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleImage = #imageLiteral(resourceName: "Title")
        
        tutorialsCell.menuItem = menuItemData.first?.items?.first
        metronomeCell.menuItem = menuItemData.last?.items?.first
        musicCell.menuItem = menuItemData.last?.items?.last
    }

    @IBAction func returnToMenuViewController(_ segue: UIStoryboardSegue) {
    }

}
