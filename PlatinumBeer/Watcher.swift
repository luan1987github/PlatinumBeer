//
//  Utils.swift
//  PlatinumBeer
//
//  Created by Luan on 08/03/2016.
//  Copyright © 2016 Luan. All rights reserved.
//

import Foundation

class Watcher {
    init() { }
    var start_: NSTimeInterval = 0.0;
    var end_: NSTimeInterval = 0.0;
    
    func start() {
        start_ = NSDate().timeIntervalSince1970;
    }
    
    func stop() {
        end_ = NSDate().timeIntervalSince1970;
    }
    
    func durationSeconds() -> NSTimeInterval {
        return end_ - start_;
    }
}