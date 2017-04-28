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
    var totalnumberofdrinksincrementor = 0
    
    
    @IBOutlet var numberofdrinks: WKInterfaceLabel!

    @IBOutlet var numberofwaterleft: WKInterfaceLabel!
    
    @IBOutlet var totalnumberofdrinks: WKInterfaceLabel!
    
    
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
        //pref 2 (incrementor person 2)
        let preferences3 = UserDefaults.standard
        let currentLevelKey3 = "currentLevel3"
        if preferences3.object(forKey: currentLevelKey3) == nil {
            //  Doesn't exist
        } else {
            let currentLevel3 = preferences3.integer(forKey: currentLevelKey3)
            let strIn3sharedprefs = String(currentLevel3)
            totalnumberofdrinks.setText(strIn3sharedprefs)
            incrementordrinks = currentLevel3
            
            
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
        totalnumberofdrinksincrementor = totalnumberofdrinksincrementor + 1
        
        let incrementorwaterstring = String(incrementorwater)
        let anddrinks = String(incrementordrinks)
        let totalnumnberofdrinksvar = String(totalnumberofdrinksincrementor)
        numberofdrinks.setText(anddrinks)
        numberofwaterleft.setText(incrementorwaterstring)
        totalnumberofdrinks.setText(totalnumnberofdrinksvar)
        
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
        
        let preferences3 = UserDefaults.standard
        let currentLevel3 = totalnumberofdrinksincrementor
        let currentLevelKey3 = "currentLevel3"
        preferences3.set(currentLevel3, forKey: currentLevelKey3)
        preferences3.synchronize()
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
    
    @IBAction func longPressReset(_ sender: Any) {
        let h0 = {self.totalnumberofdrinks.setText("this")}
        
        let action1 = WKAlertAction(title: "Approve", style: .default, handler:h0)
        let action2 = WKAlertAction(title: "Decline", style: .destructive) {}
        let action3 = WKAlertAction(title: "Cancel", style: .cancel) {}
        
        presentAlert(withTitle: "Voila", message: "Hello, testing", preferredStyle: .actionSheet, actions: [action1, action2,action3])
        
  
    }

    
}
