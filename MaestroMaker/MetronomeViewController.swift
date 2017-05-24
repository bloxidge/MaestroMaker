//
//  MetronomeViewController.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 24/05/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit

class MetronomeViewController: UIViewController {
    
    @IBOutlet var controlsView: UIView! {
        didSet {
            controlsView.layer.cornerRadius = 10
            controlsView.layer.masksToBounds = true
        }
    }
    @IBOutlet var timeSigControl: UISegmentedControl!
    @IBOutlet var tempoLabel: UILabel!
    @IBOutlet var tempoSlider: UISlider!
    @IBOutlet var startStopButton: UIButton!
    
    var isRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barStyle = .blackOpaque
        navigationController?.navigationBar.isTranslucent = false
        
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.isTranslucent = true
    }
    
    @IBAction func tempoChanged(_ sender: UISlider) {
        sender.value = roundf(sender.value)
        tempoLabel.text = String(Int(sender.value))
    }
    
    @IBAction func startStopButtonPressed(_ sender: UIButton) {
        switch isRunning {
        case true:
            isRunning = false
            sender.setTitle("START", for: .normal)
            timeSigControl.isEnabled = true
            tempoSlider.isEnabled = true
        case false:
            isRunning = true
            sender.setTitle("STOP", for: .normal)
            timeSigControl.isEnabled = false
            tempoSlider.isEnabled = false
        }
    }
    
}
