//
//  MusicDetailViewController.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 23/05/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

class MusicDetailViewController: UITableViewController {
    
    @IBOutlet var pieceInfoView: UIView!
    @IBOutlet var composerLabel: UILabel!
    @IBOutlet var genreLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var tempoLabel: UILabel!
    @IBOutlet var artworkImageView: UIImageView!
    @IBOutlet var tempoAdjustSlider: UISlider!
    @IBOutlet var tempoAdjustLabel: UILabel!
    
    var loadedPiece : Piece!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadPieceInfo()
        setupTempoAdjust()
    }
    
    private func loadPieceInfo() {
        self.navigationItem.title = loadedPiece.title
        composerLabel.text = loadedPiece.composer
        genreLabel.text = loadedPiece.genre.rawValue
        durationLabel.text = loadedPiece.durationString
        tempoLabel.text = String(loadedPiece.tempo)
        if let artwork = loadedPiece.artwork {
            artworkImageView.image = artwork
        }
        artworkImageView.image = artworkImageView.image!.blurred
    }
    
    private func setupTempoAdjust() {
        tempoAdjustLabel.text = tempoLabel.text
        tempoAdjustSlider.maximumValue = roundf(Float(loadedPiece.tempo) * 1.2)
        tempoAdjustSlider.minimumValue = roundf(Float(loadedPiece.tempo) / 1.2)
        tempoAdjustSlider.setValue(Float(loadedPiece.tempo), animated: true)
    }
    
    func applyBlur(to imageView: UIImageView) {
        let imageToBlur = CIImage(image: imageView.image!)
        let blurfilter = CIFilter(name: "CIGaussianBlur")
        blurfilter?.setValue(imageToBlur, forKey: "inputImage")
        let resultImage = blurfilter?.value(forKey: "outputImage") as! CIImage
        let blurredImage = UIImage(ciImage: resultImage)
        imageView.image = blurredImage
    }
    
    @IBAction func tempoAdjustSwitchChanged(_ sender: UISwitch) {
        tempoAdjustSlider.isEnabled = sender.isOn
        if sender.isOn {
            tempoAdjustLabel.text = String(Int(tempoAdjustSlider.value))
        } else {
            tempoAdjustLabel.text = tempoLabel.text
        }
    }
    
    @IBAction func tempoAdjustSliderChanged(_ sender: UISlider) {
        let intValue = Int(roundf(sender.value))
        tempoAdjustSlider.setValue(Float(intValue), animated: true)
        tempoAdjustLabel.text = String(intValue)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
