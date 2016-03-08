//
//  ImagePackage.swift
//  PlatinumBeer
//

import Foundation
import UIKit

class ImagePackage {
    
    var baseFileName : String!
    var caption : String!
    var photographer : String!
    var image : UIImage?
    
    
    init(baseFileName: String, caption: String, photographer: String) {
        
        self.baseFileName = baseFileName
        self.caption = caption
        self.photographer = photographer
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
