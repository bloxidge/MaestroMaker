//
//  MusicSelectionViewController.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 23/05/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

class MusicSelectionViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pieceList.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Piece", for: indexPath) as! PieceCell

        cell.piece = pieceList[indexPath.row]

        return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedCell = sender as! PieceCell
        // Pass the selected object to the new view controller.
        if let destinationVC = segue.destination as? MusicDetailViewController {
            destinationVC.loadedPiece = selectedCell.piece
        }
    }

}
