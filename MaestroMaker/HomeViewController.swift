//
//  HomeViewController.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 17/04/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var titleItem: UINavigationItem! {
        didSet {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 32))
            imageView.contentMode = .scaleAspectFit
            imageView.image = #imageLiteral(resourceName: "Title")
            titleItem.titleView = imageView
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

