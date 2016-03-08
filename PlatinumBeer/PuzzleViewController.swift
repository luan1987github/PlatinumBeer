//
//  PuzzleViewController.swift
//  PlatinumBeer
//
//  Created by Luan on 08/03/2016.
//  Copyright © 2016 Luan. All rights reserved.
//

import UIKit

class PuzzleViewController: UIViewController, PuzzleSolvedProtocol
{
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    var watcher = Watcher()
    
    var currentImagePackage : ImagePackage!
    var tilesPerRow = 3
    var timeLimit = 15
    
    // MARK: VIEWS
    @IBOutlet weak var tileArea: TileAreaView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let imageGallery = ImageGallery()
        currentImagePackage = imageGallery.getImage(0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // Initialize tileArea
        self.tileArea.delegate = self
        self.tileArea.imageToSolve = self.currentImagePackage.image!
        self.tileArea.tilesPerRow = self.tilesPerRow
        self.view.bringSubviewToFront(self.tileArea)
        self.tileArea.initialize()
        self.tileArea.layer.borderWidth = 2
        
        watcher.start()
    }
    
    // MARK: Other class methods
    func puzzleIsSolved() {
        watcher.stop()
        if self.watcher.durationSeconds() > 15 {
            
        } else {
            
        }
        print(String(self.watcher.durationSeconds()))
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
