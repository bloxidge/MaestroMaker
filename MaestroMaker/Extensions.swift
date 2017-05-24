//
//  Extensions.swift
//  MaestroMaker
//
//  Created by Peter Bloxidge on 24/05/2017.
//  Copyright © 2017 Peter Bloxidge. All rights reserved.
//

import UIKit
import GPUImage

extension UIImage {
    
    var blurred : UIImage {
        let blurFilter = GPUImageGaussianBlurFilter()
        blurFilter.blurRadiusInPixels = 10.0
        let blurredImage = blurFilter.image(byFilteringImage: self)!
        return blurredImage
    }
}
