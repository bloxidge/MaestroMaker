//
//  MusicDetailViewController.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 23/05/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

class MusicDetailViewController: UITableViewController {
    
    var loadedPiece : Piece!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = loadedPiece.title
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
