//
//  QuestionsViewController.swift
//  PlatinumBeer
//
//  Created by Luan on 09/03/2016.
//  Copyright © 2016 Luan. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var btnResult: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func pressResult(sender:UIBarButtonItem)
    {
        self.performSegueWithIdentifier("resultPage", sender: self)
    }
}
