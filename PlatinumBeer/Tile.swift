//
//  Tile.swift
//  PlatinumBeer
//

import UIKit

class Tile {

    var imageSection = UIImage()
    var imageView = UIImageView()
    var doubleIndex : DoubleIndex!
    var orientationCount : CGFloat = 1
    var originalFrame: CGRect?
    
    init(doubleIndex: DoubleIndex) {
        self.doubleIndex = doubleIndex
    }


    func getDoubleIndex() -> DoubleIndex {
        return self.doubleIndex
    }
}
