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
    
    @IBOutlet var drinkh20title: WKInterfaceLabel!
    
    @IBOutlet var numberofdrinks: WKInterfaceLabel!

    @IBOutlet var numberofwaterleft: WKInterfaceLabel!
    
    @IBOutlet var totalnumberofdrinks: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    

        
        
        //pref 1 (incrementor incrementor drinks )
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
        //pref 2 (incrementor for water)
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
        //pref 3 (incrementor for total drinks)
        let preferences3 = UserDefaults.standard
        let currentLevelKey3 = "currentLevel3"
        if preferences3.object(forKey: currentLevelKey3) == nil {
            //  Doesn't exist
        } else {
            let currentLevel3 = preferences3.integer(forKey: currentLevelKey3)
            totalnumberofdrinksincrementor = currentLevel3
            
            
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
        
        let h0 = {
            
            
            self.incrementorwater = 0
            self.incrementordrinks = 0
            
            let incrementorwaterstring = String(self.incrementorwater)
            self.numberofwaterleft.setText(incrementorwaterstring)
            
            let anddrinks = String(self.incrementordrinks)
            self.numberofdrinks.setText(anddrinks)
            
            
            let preferences = UserDefaults.standard
            let currentLevel = self.incrementorwater
            let currentLevelKey = "currentLevel"
            preferences.set(currentLevel, forKey: currentLevelKey)
            preferences.synchronize()
            
            let preferences2 = UserDefaults.standard
            let currentLevel2 = self.incrementordrinks
            let currentLevelKey2 = "currentLevel2"
            preferences2.set(currentLevel2, forKey: currentLevelKey2)
            preferences2.synchronize()
        
        }
        
        let action1 = WKAlertAction(title: "Okay, 👌🏼", style: .default, handler:h0)
        let action2 = WKAlertAction(title: "No thanks.", style: .destructive){}
       
        
        presentAlert(withTitle: "Hello, 💁🏼‍♂️", message: "Are you sure you'd like to reset drinks?", preferredStyle: .alert, actions: [action1, action2])
        
        
    }
  

    
    @IBAction func summaryButton() {
        let h0 = {}
        let action1 = WKAlertAction(title: "Okay👌🏼", style: .default, handler:h0)
        let action2 = WKAlertAction(title: "Share💞", style: .default, handler:h0)
        presentAlert(withTitle: "Your Summary:", message: "You've had \(incrementordrinks) 🍹 Make sure to drink \(incrementorwater) gulps of water💧" + "Total number of drinks over lifetime is \(totalnumberofdrinksincrementor)!", preferredStyle: .sideBySideButtonsAlert, actions: [action1, action2])
        
    }
    
    
//    @IBAction func clickingresetoveral() {
//        
//        
//        
//        
//        let action1 = WKAlertAction(title: "Thanks", style: .default){}
//        
//        
//        presentAlert(withTitle: "Hello, 💁🏼‍♂️", message: "To reset lifetime drinks cout, long press this [ℹ️] icon.", preferredStyle: .alert, actions: [action1])
//        
//    }
    
    @IBAction func longpressresetdrinkscount(_ sender: Any) {
        
        
        self.totalnumberofdrinksincrementor = 0
        let preferences3 = UserDefaults.standard
        let currentLevel3 = self.totalnumberofdrinksincrementor
        let currentLevelKey3 = "currentLevel3"
        preferences3.set(currentLevel3, forKey: currentLevelKey3)
        preferences3.synchronize()
        
        let action1 = WKAlertAction(title: "Thank you.", style: .default){}
        
        
        presentAlert(withTitle: "ℹ️", message: "Lifetime drinks reset!", preferredStyle: .alert, actions: [action1])

    }
    
    
}


    
        
    


    

