//
//  InterfaceController.swift
//  DrinkWaterReminder WatchKit Extension
//
//  Created by Austin Harshberger on 4/22/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var incrementordrinks = 0
    var incrementorwater = 0
    
    
    @IBOutlet var numberofdrinks: WKInterfaceLabel!

    @IBOutlet var numberofwaterleft: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func clickingpluswater() {
        incrementorwater = incrementorwater + 1
        let incrementorwaterstring = String(incrementorwater)
        numberofdrinks.setText(incrementorwaterstring)
    }
    
    
    @IBAction func clickingplusdrinks() {
    }




}
