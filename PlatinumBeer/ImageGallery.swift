//
//  ImageGallery.swift
//  PlatinumBeer
//

import Foundation
import UIKit

class ImageGallery {
    
    var imagePackages : [ImagePackage]!
    
    init() {
        
        self.imagePackages = [
            ImagePackage(baseFileName: "02",  game: "Puzzle"),
            ImagePackage(baseFileName: "08",  game: "Puzzle"),
            ImagePackage(baseFileName: "09",  game: "Puzzle"),
            ImagePackage(baseFileName: "16",  game: "Puzzle"),
            ImagePackage(baseFileName: "17",  game: "Puzzle"),
            ImagePackage(baseFileName: "26",  game: "Puzzle"),
            ImagePackage(baseFileName: "27",  game: "Puzzle"),
            ImagePackage(baseFileName: "31",  game: "Puzzle"),
            ImagePackage(baseFileName: "32",  game: "Puzzle"),
            ImagePackage(baseFileName: "35",  game: "Puzzle"),
            ImagePackage(baseFileName: "38",  game: "Puzzle"),
            ImagePackage(baseFileName: "39",  game: "Puzzle"),
            ImagePackage(baseFileName: "41",  game: "Puzzle"),
            ImagePackage(baseFileName: "42",  game: "Puzzle"),
            ImagePackage(baseFileName: "43",  game: "Puzzle"),
            ImagePackage(baseFileName: "44",  game: "Puzzle"),
            ImagePackage(baseFileName: "45",  game: "Puzzle"),
            ImagePackage(baseFileName: "46",  game: "Puzzle"),
            ImagePackage(baseFileName: "47",  game: "Puzzle"),
            ImagePackage(baseFileName: "48",  game: "Puzzle"),
            ImagePackage(baseFileName: "49",  game: "Puzzle"),
            ImagePackage(baseFileName: "01",  game: "Puzzle"),
            ImagePackage(baseFileName: "03",  game: "Puzzle"),
            ImagePackage(baseFileName: "04",  game: "Puzzle"),
            ImagePackage(baseFileName: "05",  game: "Puzzle"),
            ImagePackage(baseFileName: "06",  game: "Puzzle"),
            ImagePackage(baseFileName: "07",  game: "Puzzle"),
            ImagePackage(baseFileName: "12",  game: "Puzzle"),
            ImagePackage(baseFileName: "13",  game: "Puzzle"),
            ImagePackage(baseFileName: "14",  game: "Puzzle"),
            ImagePackage(baseFileName: "15",  game: "Puzzle"),
            ImagePackage(baseFileName: "18",  game: "Puzzle"),
            ImagePackage(baseFileName: "19",  game: "Puzzle"),
            ImagePackage(baseFileName: "22",  game: "Puzzle"),
            ImagePackage(baseFileName: "24",  game: "Puzzle"),
            ImagePackage(baseFileName: "25",  game: "Puzzle"),
            ImagePackage(baseFileName: "28",  game: "Puzzle"),
            ImagePackage(baseFileName: "30",  game: "Puzzle"),
            ImagePackage(baseFileName: "33",  game: "Puzzle"),
            ImagePackage(baseFileName: "56",  game: "Puzzle"),
            ImagePackage(baseFileName: "11",  game: "Puzzle"),
            ImagePackage(baseFileName: "20",  game: "Puzzle"),
            ImagePackage(baseFileName: "21",  game: "Puzzle"),
            ImagePackage(baseFileName: "23",  game: "Puzzle"),
            ImagePackage(baseFileName: "34",  game: "Puzzle"),
            ImagePackage(baseFileName: "36",  game: "Puzzle"),
            ImagePackage(baseFileName: "37",  game: "Puzzle"),
            ImagePackage(baseFileName: "40",  game: "Puzzle"),
            ImagePackage(baseFileName: "50",  game: "Puzzle"),
            ImagePackage(baseFileName: "51",  game: "Puzzle"),
            ImagePackage(baseFileName: "52",  game: "Puzzle"),
            ImagePackage(baseFileName: "53",  game: "Puzzle"),
            ImagePackage(baseFileName: "54",  game: "Puzzle"),
            ImagePackage(baseFileName: "55",  game: "Puzzle")
        ]
        self.imagePackages.shuffle()
    }
    
    func count() -> Int
    {
        return self.imagePackages.count
    }
    
    func getImage(key: Int) -> ImagePackage
    {
        return self.imagePackages[key]
    }
}


extension Array
{
    // Randomizes the order of an array's elements.
    mutating func shuffle()
    {
        for _ in 0..<self.count
        {
            sortInPlace { (_,_) in arc4random() < arc4random() }
        }
    }
}


