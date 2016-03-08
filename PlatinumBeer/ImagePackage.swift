//
//  ImagePackage.swift
//  PlatinumBeer
//

import Foundation
import UIKit

class ImagePackage {
    
    var baseFileName : String!
    var game : String!
    var image: UIImage!
    
    init(baseFileName: String, game: String) {
        
        self.baseFileName = baseFileName
        self.game = game
        self.image = UIImage(named: self.getLargeFileName())
    }    
    
    func getSmallFileName() -> String {
        return self.baseFileName + "small.jpg"
    }
    
    func getMediumFileName() -> String {
        return self.baseFileName + "medium.jpg"
    }

    func getLargeFileName() -> String {
        return self.baseFileName + "large.jpg"
    }

}
