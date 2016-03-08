//
//  PicturesViewController.swift
//  PlatinumBeer
//
//  Created by Luan on 04/03/2016.
//  Copyright © 2016 Luan. All rights reserved.
//

import UIKit

class PicturesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var btnBack: UIBarButtonItem!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    var imageGallery = ImageGallery()
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var currentImagePackage : ImagePackage!
    
    @IBAction func goBack(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.imageGallery.count()
    }
    
    // make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! ImageCollectionViewCell
        
        //cell.backgroundColor = UIColor.yellowColor() // make cell more visible in our example project
               
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        let imagePackage = self.imageGallery.getImage(indexPath.item)
        let image = UIImage(named: imagePackage.getMediumFileName())
        
        cell.imageView.image = image
        //print(cell.imageView)
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        let imagePackage = self.imageGallery.getImage(indexPath.item)
        self.currentImagePackage = imagePackage
        
        self.performSegueWithIdentifier("playPuzzle", sender: self)
    }
    
    // Segue to game screen
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if segue.identifier == "playPuzzle" {
            let gameScreen = segue.destinationViewController as! PuzzleViewController
            gameScreen.currentImagePackage = self.currentImagePackage
            //gameScreen.tilesPerRow = self.userDefaults.integerForKey("tilesPerRow")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



