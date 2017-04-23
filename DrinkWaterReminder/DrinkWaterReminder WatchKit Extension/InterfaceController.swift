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
        
        
        //pref 1 (incrementor incrementor person 1)
        let preferences = UserDefaults.standard
        let currentLevelKey = "currentLevel"
        if preferences.object(forKey: currentLevelKey) == nil {
            //  Doesn't exist
        } else {
            let currentLevel = preferences.integer(forKey: currentLevelKey)
            let strIn1sharedprefs = String(currentLevel)
            numberofwaterleft.setText(strIn1sharedprefs)
            incrementorwater = currentLevel
        }
        //pref 2 (incrementor person 2)
        let preferences2 = UserDefaults.standard
        let currentLevelKey2 = "currentLevel2"
        if preferences2.object(forKey: currentLevelKey2) == nil {
            //  Doesn't exist
        } else {
            let currentLevel2 = preferences2.integer(forKey: currentLevelKey2)
            let strIn2sharedprefs = String(currentLevel2)
            numberofdrinks.setText(strIn2sharedprefs)
            incrementordrinks = currentLevel2
            
            
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func clickingplusdrinks() {
        incrementorwater = incrementorwater + 1
        incrementordrinks = incrementordrinks + 1
        let incrementorwaterstring = String(incrementorwater)
        let anddrinks = String(incrementordrinks)
        numberofdrinks.setText(anddrinks)
        numberofwaterleft.setText(incrementorwaterstring)
        
        let preferences = UserDefaults.standard
        let currentLevel = incrementorwater
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
        
        let preferences2 = UserDefaults.standard
        let currentLevel2 = incrementordrinks
        let currentLevelKey2 = "currentLevel2"
        preferences2.set(currentLevel2, forKey: currentLevelKey2)
        preferences2.synchronize()
    }


    @IBAction func ihadwaterclick() {
        incrementorwater = incrementorwater - 1
        let incrementorwaterstring = String(incrementorwater)
        numberofwaterleft.setText(incrementorwaterstring)
        
        let preferences = UserDefaults.standard
        let currentLevel = incrementorwater
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()

        
    }

    
    @IBAction func clickingReset() {
        incrementorwater = 0
        incrementordrinks = 0
        
        let incrementorwaterstring = String(incrementorwater)
        numberofwaterleft.setText(incrementorwaterstring)
        
        let anddrinks = String(incrementordrinks)
        numberofdrinks.setText(anddrinks)
        
        
        
        
        let preferences = UserDefaults.standard
        let currentLevel = incrementorwater
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
        
        let preferences2 = UserDefaults.standard
        let currentLevel2 = incrementordrinks
        let currentLevelKey2 = "currentLevel2"
        preferences2.set(currentLevel2, forKey: currentLevelKey2)
        preferences2.synchronize()
    }
}
