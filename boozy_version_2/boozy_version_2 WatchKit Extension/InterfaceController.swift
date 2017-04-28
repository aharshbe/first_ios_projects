//
//  InterfaceController.swift
//  boozy_version_2 WatchKit Extension
//
//  Created by Austin Harshberger on 4/27/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    
    @IBOutlet var agelabel: WKInterfaceLabel!

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        let defaults = UserDefaults(suiteName: "group.austinsgroup.example")
        defaults?.synchronize()
        
        // Check for null value before setting
        if let restoredValue = defaults!.string(forKey: "alarmTime") {
            agelabel.setText(restoredValue)
        }
        else {
            agelabel.setText("Cannot find value")
        }
    
 
    }
}


