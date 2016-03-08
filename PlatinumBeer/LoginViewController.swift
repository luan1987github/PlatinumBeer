//
//  LoginViewController.swift
//  PlatinumBeer
//
//  Created by Luan on 04/03/2016.
//  Copyright © 2016 Luan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var segGender: UISegmentedControl!
    @IBOutlet weak var btnLogin: UIButton!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressLogin(sender:UIButton!)
    {
        txtPhone.text = "234"
        txtName.text = "Luan Nguyen"

        let nameIsEmpty = txtName.text!.isEmpty
        let phoneIsEmpty = txtPhone.text!.isEmpty
        if nameIsEmpty || phoneIsEmpty {
            let alertController = UIAlertController(title: "Login fail", message:
                "Name or Phone can not empty", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        } else {
            self.storeUser()
            self.performSegueWithIdentifier("playGameIdentifier", sender: self)
        }
        
    }
    
    func storeUser()
    {
        // Set user defaults upon the first launch
        if(!self.userDefaults.boolForKey("isLogined")){
            let user = User(name: txtName.text!, phone: txtPhone.text!, gender: segGender.selectedSegmentIndex)
            
            // Only gets called once ever
            self.userDefaults.setBool(true, forKey: "isLogined")
            self.userDefaults.setValue(user, forKey: "userInfo")
            
            self.userDefaults.synchronize()
        }

    }
    
    }